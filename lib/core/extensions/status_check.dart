extension StatusCheck on int? {
  /// # [isSucceed] Method
  ///
  /// The [isSucceed] method is a custom method for an integer value and is used
  /// to check if the integer value represents a successful status code.
  ///
  /// ## Method Details
  ///
  /// - The method is called on an integer value.
  /// - It checks if the integer value is equal to `200` or `201`.
  /// - If the integer value is `200` or `201`, it returns `true`, indicating
  /// that the status is successful. Otherwise, it returns `false`.
  ///
  /// ## Example Usage
  ///
  /// ```dart
  /// int statusCode = 200;
  /// bool isSuccess = statusCode.isSucceed();
  /// ```
  bool isSucceed() {
    if (this == 200 || this == 201) {
      return true;
    }
    return false;
  }

  /// # [isNotSucceed] Method
  ///
  /// The [isNotSucceed] method is a custom method for an integer value and is
  /// used to check if the integer value does not represent a successful status
  /// code.
  ///
  /// ## Method Details
  ///
  /// - The method is called on an integer value.
  /// - It checks if the integer value is not equal to `200` or `201`.
  /// - If the integer value is not `200` or `201`, it returns `true`,indicating
  /// that the status is not successful. Otherwise, it returns `false`.
  ///
  /// ## Example Usage
  ///
  /// ```dart
  /// int statusCode = 404;
  /// bool isNotSuccess = statusCode.isNotSucceed();
  /// ```
  bool isNotSucceed() {
    if (this == 200 || this == 201) {
      return false;
    }
    return true;
  }
}
