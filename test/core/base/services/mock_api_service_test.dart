import 'package:clean_architecture_example/core/base/services/mocked_api_service.dart';
import 'package:flutter_test/flutter_test.dart';

/// Test suite for `MockApiService`, verifying that `isMockApiService`
/// remains `false` and that `switchToMockData` behaves as expected.
void main() {
  group('MockApiService Tests', () {
    /// Test to ensure `isMockApiService` is always set to `false`.
    ///
    /// This test verifies that `isMockApiService` does not unintentionally
    /// switch to `true`, as this could cause unexpected behavior in the
    /// app. It asserts that `isMockApiService` remains `false` and raises
    /// an error if this condition is violated.
    test('should return error if isMockApiService is true', () {
      expect(
        MockApiService.isMockApiService,
        isFalse,
        reason: 'Error: isMockApiService should always be false.',
      );
    });

    /// Test to ensure `switchToMockData` returns the `real` data when
    /// `isMockApiService` is `false`.
    ///
    /// This test sets up a mock instance and a real data string, then
    /// checks that `switchToMockData` correctly returns the `real` data
    /// when `isMockApiService` is disabled. This ensures that the method
    /// functions correctly under the intended configuration.
    test(
        'switchToMockData should return real data when isMockApiService is'
        ' false', () {
      final mock = MockService();
      const real = 'Real data';

      // Execute switchToMockData and check the output
      final result = MockApiService.switchToMockData(mock: mock, real: real);

      expect(
        result,
        real,
        reason: 'Expected real data when isMockApiService is false.',
      );
    });

    /// Test to ensure `switchToMockData` succeeds when returning the `real`
    /// data.
    ///
    /// This test verifies that `switchToMockData` succeeds by returning the
    /// `real` data when `isMockApiService` is `false`, without throwing any
    /// errors.
    test('should succeed by returning real data without errors', () {
      final mock = MockService();
      const real = 'Real data';

      // Execute switchToMockData and check that it returns the real data
      // without errors
      final result = MockApiService.switchToMockData(mock: mock, real: real);

      expect(result, real);
      expect(
        MockApiService.isMockApiService,
        isFalse,
        reason:
            'Expected isMockApiService to be false to succeed with real data.',
      );
    });
  });
}
