import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class SelectGuestRewardWidget extends StatelessWidget {
  final List<String> guests;

  const SelectGuestRewardWidget({
    Key? key,
    required this.guests,
  }) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text(guests[index]),
      leading: Radio<String>(
        activeColor: Theme.of(context).colorScheme.primaryBlue,
        value: guests[index],
        groupValue: context.watch<RewardUserBloc>().state.guestName,
        onChanged: (String? value) {
          context.read<RewardUserBloc>().add(RewardUserEvent.rewardGuest(value!));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardUserBloc, RewardUserState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 8),
            itemCount: guests.length,
            itemBuilder: _itemBuilder
          ),
        );
      },
    );
  }
}
