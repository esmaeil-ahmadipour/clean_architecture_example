import 'package:clean_architecture_example/features/login/presentation/bloc/phone_number_validator.dart';
import 'package:clean_architecture_example/features/login/presentation/widget/submit_button.dart';
import 'package:clean_architecture_example/features/login/presentation/widget/validation_input.dart';
import 'package:clean_architecture_example/features/login/presentation/widget/validator_icon.dart';
import 'package:flutter/material.dart';

class FormSection extends StatefulWidget {
  const FormSection({
    super.key,
  });

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {
  final PhoneNumberValidator bloc = PhoneNumberValidator();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StreamBuilder<bool>(
              stream: bloc.isSubmitEnabledStream,
              builder: (context, snapshot) {
                final isSubmitEnabled = snapshot.data ?? false;
                return ValidationIcon(isSubmitEnabled: isSubmitEnabled);
              },
            ),
            Expanded(
              child: ExcludeSemantics(
                // TODO(Esmaeil): using `ExcludeSemantics` for linux bug.
                child: StreamBuilder<String>(
                  stream: bloc.errorMessageStream,
                  builder: (context, snapshot) {
                    final errorMessage = snapshot.data ?? '';
                    return ValidationInput(
                      updatePhone: bloc.updatePhone,
                      errorMessage: errorMessage,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        StreamBuilder<bool>(
          stream: bloc.isSubmitEnabledStream,
          builder: (context, snapshot) {
            final isSubmitEnabled = snapshot.data ?? false;
            return SubmitButton(isSubmitEnabled: isSubmitEnabled);
          },
        ),
      ],
    );
  }
}
