import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/image_viewer/image_viewer_bloc.dart';
import 'package:r_home/application/my_local_activities/my_local_activities_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/images_view_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/disputes/widgets/image_index_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class MyLocalActivityDetailsPage extends StatelessWidget {
  final String localActivityUuid;

  const MyLocalActivityDetailsPage({Key? key, required this.localActivityUuid})
      : super(key: key);

  Widget _buildRow(BuildContext context, String left, var right) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          if (left.toString() == "Price:") ...[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(right.toString()),
                ),
                SvgPicture.asset(
                  'assets/icons/token.svg',
                  color: Theme.of(context).colorScheme.primaryBlue,
                  width: 23,
                )
              ],
            ),
          ] else ...[
            Text(right.toString()),
          ]
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MyLocalActivitiesBloc(LocalActivitiesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                  FirebaseFirestore.instance),
              FirebaseStorage.instance))
            ..add(MyLocalActivitiesEvent.watchLocalActivity(localActivityUuid)),
        ),
        BlocProvider(create: (context) => ImageViewerBloc()),
      ],
      child: BlocBuilder<ImageViewerBloc, ImageViewerState>(
        builder: (context, state) {
            final _localActivity =
                context.watch<MyLocalActivitiesBloc>().state.localActivity;
            final _images = context
                .watch<MyLocalActivitiesBloc>()
                .state
                .localActivityImages;

            final _imageIndex = context.watch<ImageViewerBloc>().state.selectedImageIndex;

            return Scaffold(
              appBar: AppBarWidget(
                title: _localActivity.name,
                actions: [
                  IconButton(
                    onPressed: () => AutoRouter.of(context).push(
                        MyLocalActivitiesFormRoute(
                            editedActivity: _localActivity)),
                    icon: const Icon(Icons.edit),
                    splashRadius: 20,
                  )
                ],
              ),
              body: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  SizedBox(
                    child: ImagesViewWidget(images: _images),
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                  ),
                  ImageIndexWidget(
                      numberOfImages: _images.length, activePage: _imageIndex),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, right: 15.0, left: 15.0),
                    child: Column(
                      children: [
                        _buildRow(
                            context, "Location:", _localActivity.location),
                        _buildRow(context, "Price:", _localActivity.price),
                        _buildRow(context, "Contact:", _localActivity.contact),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: RoundedButtonWidget(
                      text: 'SEE HOMES ASSOCIATED',
                      onPressed: () => AutoRouter.of(context).push(
                          HomesPageRoute(activityUuid: _localActivity.uuid)),
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryBlue,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.white,
                      fontSize: 20,
                      height: 45,
                      width: 310,
                      trailingIcon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
              bottomNavigationBar: const BottomBarWidget(),
            );
        },
      ),
    );
  }
}
