import 'package:clean_architecture_example/core/base/ui/button_style.dart';
import 'package:clean_architecture_example/core/constants/app_strings_keys.dart';
import 'package:clean_architecture_example/core/enums/api_states.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    this.onPressed,
    this.apiStates,
  });

  final void Function()? onPressed;
  final ApiStates? apiStates;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 120,
      child: ElevatedButton(
        style: switch (apiStates) {
          ApiStates.loaded => buttonStyle(Colors.blue),
          ApiStates.error => buttonStyle(Colors.red),
          ApiStates.loading => buttonStyle(Colors.grey),
          _ => null
        },
        onPressed: switch (apiStates) {
          ApiStates.loading => null,
          ApiStates.loaded => () {},
          _ => onPressed
        },
        child: switch (apiStates) {
          ApiStates.loading => SizedBox(
              width: 32,
              height: 32,
              child: CircularProgressIndicator(
                color: Colors.grey,
              ),
            ),
          ApiStates.error => Text(AppStringsKeys.retry),
          _ => Text(AppStringsKeys.submit)
        },
      ),
    );
  }
}
