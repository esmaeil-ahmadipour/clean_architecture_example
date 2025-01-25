import 'package:clean_architecture_example/features/shared/keys/app_strings_keys.dart';
import 'package:clean_architecture_example/features/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ValidationInput extends StatelessWidget {
  const ValidationInput({
    super.key,
    required this.updatePhone,
    required this.errorMessage,
  });

  final void Function(String) updatePhone;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(
            r'[0-9+]',
          ),
        ),
      ],
      onChanged: updatePhone,
      decoration: InputDecoration(
        labelText: AppStringsKeys.enterThePhoneNumber,
        border: OutlineInputBorder(),
        hintText: AppStringsKeys.hintTextPhoneNumber,
        errorText: errorMessage.isNotEmpty ? errorMessage : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorMessage.isNotEmpty
                ? AppColors.errorColor
                : AppColors.inputBorderColor,
          ),
        ),
      ),
    );
  }
}
