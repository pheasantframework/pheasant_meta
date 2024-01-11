/// Base class for an exception in the Pheasant Framework
class PheasantException implements Exception {
  final dynamic message;

  PheasantException([this.message]);
}

/// Base class for an error in the Pheasant Framework
class PheasantError extends Error {
  final dynamic what;

  PheasantError({this.what = ""});

  factory PheasantError.unsupported(String message)
  => PheasantUnsupportedError(message);

  factory PheasantError.unimplemented() => PheasantUnimplementedError();
}

/// Implementation of Unsupported Error in the Pheasant Framework
class PheasantUnsupportedError extends UnsupportedError implements PheasantError {
  PheasantUnsupportedError(super.message);

  @override
  get what => message;
}

/// Implementation of Unimplemented Error in the Pheasant Framework
class PheasantUnimplementedError extends UnimplementedError implements PheasantError {
  @override
  get what => "No implementation";
}