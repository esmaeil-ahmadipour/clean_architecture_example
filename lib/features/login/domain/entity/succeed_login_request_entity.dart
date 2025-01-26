import 'package:equatable/equatable.dart';

class SucceedLoginRequestEntity extends Equatable {
  const SucceedLoginRequestEntity({
    required this.token,
  });

  final String token;

  @override
  List<Object?> get props => [
        token,
      ];
}
