class BaseHandler {
  final bool isError;
  final Map<String, dynamic>? response;

  final String? errorMsg;

  BaseHandler.error(
      {this.isError = true, this.response, required this.errorMsg});
  BaseHandler.response(
      {this.isError = false, required this.response, this.errorMsg});
}
