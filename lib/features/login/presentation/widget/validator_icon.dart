import 'package:clean_architecture_example/features/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ValidationIcon extends StatelessWidget {
  const ValidationIcon({
    super.key,
    required this.isSubmitEnabled,
  });

  final bool isSubmitEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Icon(
        size: 32,
        isSubmitEnabled ? Icons.check_circle : Icons.unpublished,
        color:
            isSubmitEnabled ? AppColors.inputBorderColor : AppColors.errorColor,
      ),
    );
  }
}
