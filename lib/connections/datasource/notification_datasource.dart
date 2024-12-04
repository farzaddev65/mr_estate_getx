part of '../data.dart';


class NotificationDataSource {


  void getNotifications({
    required final Function(GenericResponse<NotificationModel> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/notification/getNotifications",
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<NotificationModel>.fromJson(response.data, fromMap: NotificationModel.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );
}
