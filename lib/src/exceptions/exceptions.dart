class PheasantException implements Exception {
  final dynamic message;

  PheasantException([this.message]);
}

class PheasantError extends Error {
  final dynamic what;

  PheasantError({this.what = ""});

  factory PheasantError.unsupported(String message)
  => PheasantUnsupportedError(message);

  factory PheasantError.unimplemented() => PheasantUnimplementedError();
}

class PheasantUnsupportedError extends UnsupportedError implements PheasantError {
  PheasantUnsupportedError(super.message);

  @override
  get what => message;
}

class PheasantUnimplementedError extends UnimplementedError implements PheasantError {
  @override
  // TODO: implement what
  get what => "";

}