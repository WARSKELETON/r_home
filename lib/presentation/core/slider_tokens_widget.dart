import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/r_home_icon_icons.dart';

class SliderTokensWidget extends StatelessWidget {
  final double value;
  final void Function(double value) onChanged;

  const SliderTokensWidget({Key? key, required this.value, required this.onChanged}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final currentUser = context.read<AuthBloc>().state.user;

        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    child: Slider(
                      activeColor: Theme.of(context).colorScheme.primaryBlue,
                      inactiveColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.2),
                      value: value > currentUser.numTokens ? 0 : value,
                      min: 0,
                      max: currentUser.numTokens,
                      divisions: 100,
                      label: value.toStringAsFixed(2),
                      onChanged: onChanged,
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 75,
                        child: Text(
                          value.toStringAsFixed(2),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Icon(RHomeIcon.token, color: Theme.of(context).colorScheme.primaryBlue)
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
