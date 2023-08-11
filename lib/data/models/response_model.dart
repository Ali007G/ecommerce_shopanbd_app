class ResponseModel {
  final int statusCode;
  final bool isSuccess;
  final String returnData;

  ResponseModel(
      {required this.isSuccess,
      required this.statusCode,
      required this.returnData});
}
