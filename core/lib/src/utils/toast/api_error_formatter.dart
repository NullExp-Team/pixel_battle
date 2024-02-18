import '../../../../core.dart';

class ApiErrorFormatter {
  const ApiErrorFormatter();
  static final _messageFormater = MessageFormatter();

  (String title, String? text, String debugText) format(
    ApiError<BaseApiError> response,
  ) {
    switch (response) {
      case ErrorResponse():
        final error = response.error;
        final (title, text, debugErrorJson) = switch (error) {
          _ => (error.toString(), null, null),
        };

        final debugText = _messageFormater.format(
          '${response.statusCode} ${response.method} ${response.url}\n\n${_messageFormater.format(debugErrorJson)}\n\n${response.stackTrace}',
        );
        return (title, text, debugText);

      case InternalError():
        final error = response.error;
        final text = _messageFormater.format(error);
        return ('Internal error', text, response.stackTrace.toString());
    }
  }
}
