import 'package:clean_architecture_example/features/details/domain/entity/succeed_user_details_entity.dart';
import 'package:clean_architecture_example/features/details/presentation/widget/detail_row.dart';
import 'package:clean_architecture_example/features/details/presentation/widget/shimmer_widget.dart';
import 'package:flutter/material.dart';

class UserDetailsCard extends StatelessWidget {
  const UserDetailsCard({
    super.key,
    required this.userDetails,
    required this.isLoading,
  });

  final SucceedUserDetailsEntity? userDetails;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Full name
            isLoading
                ? const ShimmerWidget.rectangular(height: 22, width: 150)
                : Text(
                    '''
${userDetails?.userFirstName ?? ''} ${userDetails?.userLastName ?? ''}''',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
            const SizedBox(height: 16),
            // National ID detail row
            DetailRow(
              isLoading: isLoading,
              label: 'National ID',
              value: userDetails?.userNationalCode ?? '',
            ),
            // Phone Number detail row
            DetailRow(
              isLoading: isLoading,
              label: 'Phone Number',
              value: userDetails?.userPhoneNumber ?? '',
            ),
            // Account Balance detail row
            DetailRow(
              isLoading: isLoading,
              label: 'Account Balance',
              value: '${userDetails?.userAccountBalance ?? ''} Rials',
            ),
          ],
        ),
      ),
    );
  }
}
