import 'package:clean_architecture_example/core/enums/api_states.dart';
import 'package:clean_architecture_example/core/router/app_route_enum.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';
import 'package:clean_architecture_example/features/login/presentation/bloc/api/login_request_bloc.dart';
import 'package:clean_architecture_example/features/login/presentation/bloc/validator/phone_number_validator.dart';
import 'package:clean_architecture_example/features/login/presentation/widget/submit_button.dart';
import 'package:clean_architecture_example/features/login/presentation/widget/validation_input.dart';
import 'package:clean_architecture_example/features/login/presentation/widget/validator_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StreamBuilder<bool>(
                stream: bloc.isSubmitEnabledStream,
                builder: (context, snapshot) {
                  final isSubmitEnabled = snapshot.data ?? false;
                  return ValidationIcon(isSubmitEnabled: isSubmitEnabled);
                },
              ),
              SizedBox(
                width: 300,
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
              return BlocConsumer<LoginRequestBloc, LoginRequestState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loaded: (data) {
                      showToast(context, 'token:\n${data.token}');
                      Future.delayed(Duration(seconds: 2), redirect);
                    },
                  );
                },
                builder: (context, state) {
                  return SubmitButton(
                    onPressed: isSubmitEnabled
                        ? () {
                            context.read<LoginRequestBloc>().add(
                                  LoginRequestEvent.updateResponse(
                                    params: LoginRequestParams(
                                      mobilNumber: bloc.currentPhoneNumber,
                                    ),
                                  ),
                                );
                          }
                        : null,
                    apiStates: state.when(
                      initial: () => ApiStates.initial,
                      loading: () => ApiStates.loading,
                      loaded: (_) => ApiStates.loaded,
                      error: (_) => ApiStates.error,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  void redirect() {
    context.go(AppRoute.details.fullPath);
  }

  void showToast(BuildContext context, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(data),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
