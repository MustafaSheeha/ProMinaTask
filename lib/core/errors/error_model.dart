class ErrorModel {
  String? errorMessage;

  ErrorModel({this.errorMessage});

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        errorMessage: json['error_message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'error_message': errorMessage,
      };
}
