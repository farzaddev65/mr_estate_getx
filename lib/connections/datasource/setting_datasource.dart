part of '../data.dart';

class SettingDataSource {

  Future<void> getUpdateApp({
    required final Function(GenericResponse<SettingDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) => httpGet(
      url: Uri.parse("${AppConstants.baseURL}/user/auth/getUpdateApp").toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<SettingDto>.fromJson(response.data, fromMap: SettingDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );

}
