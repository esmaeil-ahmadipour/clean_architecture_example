/// [MockService] : A mixin class representing a mock service object.
/// This is used as a sample type for testing `MockApiService`.
mixin class MockService {}

/// ### [MockApiService] Class Description:
/// Provides a mock service management system to simulate and toggle between
/// mock and real data sources for API responses, based on a configuration flag.
/// `MockApiService` is designed to aid testing and development by allowing
/// toggling between mock and real data responses. Using the static flag
/// [isMockApiService], the class conditionally returns mock data to facilitate
/// testing environments.
///
/// ### Variables:
/// - [isMockApiService] : Determines whether to return mock data (`true`)
///   or real data (`false`). It should be set to `false` in production.
/// - [millisecondsDurationMockApiService] : Specifies delay duration for mock
///    responses , enabling network latency simulation in tests.
///   A value of `0` disables delay.
///
/// ### Methods:
/// - [switchToMockData] : Returns either mock/real data based on [isMockApiService].
///   - Parameters:
///     - `mock` : The mock data to return when [isMockApiService] is `true`,
///       expected to be of type [MockService].
///     - `real` : The real data to return when [isMockApiService] is `false`,
///       which should not be of type [MockService].
///   - Returns: Either `mock` or `real` based on the [isMockApiService] value.
///
/// Example:
/// ```dart
///   final result = MockApiService.switchToMockData(mock:mockObj,real:realObj);
/// ```
class MockApiService {
  MockApiService._();
  static const bool isMockApiService = false;
  static const int millisecondsDurationMockApiService = 3000;

  static T switchToMockData<T>({required T mock, required T real}) {
    assert(mock is MockService, 'Error: `mock` should be of type MockService.');
    assert(
      real is! MockService,
      'Error: `real` should not be of type MockService.',
    );

    return isMockApiService ? mock : real;
  }
}
