import 'package:clean_architecture_example/core/constants/sharedpreferences_keys.dart';
import 'package:clean_architecture_example/core/utils/storage_data/sharedprefrences.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';
import 'package:clean_architecture_example/features/details/presentation/bloc/api/user_details_bloc.dart';
import 'package:clean_architecture_example/features/details/presentation/widget/user_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsSection extends StatefulWidget {
  const UserDetailsSection({
    super.key,
  });

  @override
  State<UserDetailsSection> createState() => _UserDetailsSectionState();
}

class _UserDetailsSectionState extends State<UserDetailsSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
        builder: (context, state) {
          return UserDetailsCard(
            isLoading:
                state.maybeWhen(orElse: () => true, loaded: (_) => false),
            userDetails: state.whenOrNull(loaded: (data) => data),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final storedToken = SharedPreferencesUtil.getData(
        SharedPreferencesKeys.storedToken,
      );
      context.read<UserDetailsBloc>().add(
            UserDetailsEvent.updateResponse(
              params: UserDetailsParams(
                token: '$storedToken',
              ),
            ),
          );
    });
    super.initState();
  }
}
