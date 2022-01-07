import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class SelectAmountRewardWidget extends StatelessWidget {
  const SelectAmountRewardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double amount = context.watch<RewardUserBloc>().state.amount;

    return BlocBuilder<RewardUserBloc, RewardUserState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
          child: 
            Column(
              children: [
                Center(
                  child: SizedBox(
                    child: Slider(
                      activeColor: Theme.of(context).colorScheme.primaryBlue,
                      value: amount,
                      max: 100,
                      divisions: 100,
                      label: amount.round().toString(),
                      onChanged: (double value) {
                        context.read<RewardUserBloc>().add(RewardUserEvent.changeRewardAmount(value));
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 40,
                        child: Text(
                          amount.round().toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Icon(RHomeIcon.token, color: Theme.of(context).colorScheme.primaryBlue,)
                  ],
                ),
              ],
            ),
        );
      },
    );
  }
}
