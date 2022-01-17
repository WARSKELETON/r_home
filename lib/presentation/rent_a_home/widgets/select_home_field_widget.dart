import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/image_viewer/image_viewer_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/presentation/core/home_details_text_widget.dart';
import 'package:r_home/presentation/core/images_view_widget.dart';
import 'package:r_home/presentation/disputes/widgets/image_index_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/select_home_card_widget.dart';

class SelectHomeField extends StatelessWidget {
  const SelectHomeField({Key? key}) : super(key: key);

  String getDateString(DateTime checkIn, DateTime checkOut) {
    return checkIn.day.toString() + "/" + checkIn.month.toString() + "/" + checkIn.year.toString() + " - " + checkOut.day.toString() + "/" + checkOut.month.toString() + "/" + checkOut.year.toString();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageViewerBloc(),
      child: BlocBuilder<ImageViewerBloc, ImageViewerState>(
          builder: (context, state) {
            return BlocBuilder<RentAHomeBloc, RentAHomeState>(
              builder: (context, state) {
                final _homes = context.watch<RentAHomeBloc>().state.homes;
                final _home = context.watch<RentAHomeBloc>().state.selectedHome;
                final _checkIn = context.watch<RentAHomeBloc>().state.checkIn;
                final _checkOut = context.watch<RentAHomeBloc>().state.checkOut;
                final _location = context.watch<RentAHomeBloc>().state.location;
                final _numAdults = context.watch<RentAHomeBloc>().state.idealRental.numAdults;
                final _numChildren = context.watch<RentAHomeBloc>().state.idealRental.numChildren;
                final _numPets = context.watch<RentAHomeBloc>().state.idealRental.numPets;
                final _images = context.watch<RentAHomeBloc>().state.homeImages;
        
                final _imageIndex = context.watch<ImageViewerBloc>().state.selectedImageIndex;
        
                if (_home.name == "") {
                  if (_homes.isNotEmpty) {
                    return Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.all(10),
                        itemCount: _homes.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return SelectHomeCardWidget(home: _homes[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) => const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                        ),
                      )
                    );
                  } else {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
                        child: Text(
                          "No homes are available in $_location from ${getDateString(_checkIn!, _checkOut!)} for  adults,  children,  pets.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      )
                    );
                  }
                } else {
                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: ImagesViewWidget(images: _images),
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                          ),
                          ImageIndexWidget(
                              numberOfImages: _images.length,
                              activePage: _imageIndex
                          ),
                          HomeDetailsTextWidget(home: _home)
                        ],
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
    );
  }
}
