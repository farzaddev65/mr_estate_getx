part of '../data.dart';

class PlanningDataSource {

  void storePlanning({
    required final UploadPlanning uploadPlanning,
    required final Function(GenericResponse<Planning> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/planning/storePlanning",
        body: uploadPlanning,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<Planning>.fromJson(response.data, fromMap: Planning.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getUserPlanning({
    required final Function(GenericResponse<Planning> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/planning/getUserPlanning",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<Planning>.fromJson(response.data, fromMap: Planning.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );



}
