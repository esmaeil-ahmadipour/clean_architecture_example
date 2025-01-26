import 'package:clean_architecture_example/core/constants/app_strings_keys.dart';
import 'package:rxdart/rxdart.dart';

class PhoneNumberValidator {
  final _phoneController = BehaviorSubject<String>();

  // Stream for the phone number with debounce
  Stream<String> get phoneStream =>
      _phoneController.stream.debounceTime(Duration(milliseconds: 300));

  // Method to get current phone number value
  String get currentPhoneNumber => _phoneController.value;

  // Stream for button enabled status
  Stream<bool> get isSubmitEnabledStream =>
      phoneStream.map(_isIranianPhoneNumber);

  // Stream for error message
  Stream<String> get errorMessageStream => phoneStream.map(
        (phone) => _isIranianPhoneNumber(phone)
            ? ''
            : AppStringsKeys.enterMobileNumber,
      );

// Function to add phone number
  void Function(String) get updatePhone => _phoneController.sink.add;

  // Function to validate Iranian phone number
  bool _isIranianPhoneNumber(String phoneNumber) {
    final iranianPattern1 = RegExp(r'^((0?9)|(\+?989)|(00989))\d{9}$');
    final iranianPattern2 =
        RegExp(r'^((0?9)|(\+?989)|(00989))\d{2}\W?\d{3}\W?\d{4}$');
    return iranianPattern1.hasMatch(phoneNumber) ||
        iranianPattern2.hasMatch(phoneNumber);
  }

  void dispose() {
    _phoneController.close();
  }
}
