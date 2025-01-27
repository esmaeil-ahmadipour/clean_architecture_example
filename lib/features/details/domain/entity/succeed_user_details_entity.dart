import 'package:equatable/equatable.dart';

class SucceedUserDetailsEntity extends Equatable {
  const SucceedUserDetailsEntity({
    required this.userFirstName,
    required this.userLastName,
    required this.userNationalCode,
    required this.userPhoneNumber,
    required this.userAccountBalance,
  });

  final String userFirstName;
  final String userLastName;
  final String userNationalCode;
  final String userPhoneNumber;
  final int userAccountBalance;

  @override
  List<Object?> get props => [
        userFirstName,
        userLastName,
        userNationalCode,
        userPhoneNumber,
        userAccountBalance,
      ];
}
