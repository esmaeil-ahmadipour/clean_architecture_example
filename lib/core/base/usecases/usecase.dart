/// An abstract class representing a generic use case in the application.
///
/// A use case typically encapsulates a specific operation or business logic
/// that can be executed within the application. It defines a generic type [T]
/// for the expected result and a parameter [P] that can be passed to use case.
///
/// Implementations of this abstract class should override the `call` method
/// to provide the specific logic for the use case. The `call` method should
/// return a [Future] representing the result of the operation.
///
/// Example Usage:
/// ```dart
/// class GetUserProfileUseCase extends UseCase<UserProfile, String> {
///   final UserRepository userRepository;
///
///   GetUserProfileUseCase(this.userRepository);
///
///   @override
///   Future<UserProfile> call({String? params}) {
///     return userRepository.getUserProfile(params);
///   }
/// }
/// ```
///
/// In this example, `GetUserProfileUseCase` is a specific use case that takes
/// a user ID as a parameter and returns a `UserProfile`. The `call` method is
/// implemented to fetch the user's profile using a `UserRepository`.
///
/// By extending this class and implementing the `call` method, developers can
/// create reusable and testable use cases to perform various operations in the
/// application.
///
// ignore_for_file: one_member_abstracts
abstract class UseCase<T, P> {
  /// Executes the use case with the provided parameters.
  ///
  /// Implementations of this method should perform the specific business logic
  /// or operation associated with the use case.
  ///
  /// Parameters:
  /// - `params`: An optional parameter of type [P] that can be used by usecase.
  ///
  /// Returns:
  ///   - A [Future] that represents the result of the use case operation, with
  ///     a result of type [T].
  Future<T> call({P? params});
}
