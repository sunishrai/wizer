class BaseResponseHandler<T> {
  final bool isLoading;
  final bool noData;
  final T? response;
  BaseResponseHandler.loading(
      {this.noData = false, this.isLoading = true, this.response});
  BaseResponseHandler.loaded(
      {this.noData = false, this.isLoading = false, required this.response});
  BaseResponseHandler.noData(
      {this.noData = true, this.isLoading = false, this.response});
}
