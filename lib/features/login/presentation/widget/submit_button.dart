import 'package:clean_architecture_example/features/shared/keys/app_strings_keys.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.isSubmitEnabled,
  });

  final bool isSubmitEnabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isSubmitEnabled
          ? () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppStringsKeys.submittedPhoneNumber),
                ),
              );
            }
          : null,
      child: Text(AppStringsKeys.submit),
    );
  }
}
