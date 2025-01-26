enum HandleError {
  dataTypeError(900, 'Data Type Error'),
  network(901, 'Network Error'),
  unknown(902, 'Unknown Error');

  const HandleError(this.statusCode, this.label);

  final int statusCode;
  final String label;
}
