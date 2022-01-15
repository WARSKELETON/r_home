import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class SelectUserRewardWidget extends StatelessWidget {
  final List<DomainUser> users;

  const SelectUserRewardWidget({
    Key? key,
    required this.users,
  }) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text(users[index].getUsername()),
      leading: Radio<String>(
        activeColor: Theme.of(context).colorScheme.primaryBlue,
        value: users[index].id,
        groupValue: context.watch<RewardUserBloc>().state.beneficiary.id,
        onChanged: (String? value) {
          var selectedUser = users.firstWhere((user) => user.id == value);
          context.read<RewardUserBloc>().add(RewardUserEvent.rewardGuest(selectedUser));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardUserBloc, RewardUserState>(
      builder: (context, state) {
        return Expanded(
          child: users.isEmpty ?
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              "You cannot send tokens to any user because you haven't interacted with one yet.",
              textAlign: TextAlign.center,
            ),
          ) :
          ListView.builder(
            padding: const EdgeInsets.only(left: 8),
            itemCount: users.length,
            itemBuilder: _itemBuilder
          ),
        );
      },
    );
  }
}
