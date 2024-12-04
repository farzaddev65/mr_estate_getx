part of '../data.dart';

class ReportDataSource {

  void storeReport({
    required final CreateReportReadDto body,
    required final Function(GenericResponse<ReportReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/crashreport/storeReport",
        body: body,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<ReportReadDto>.fromJson(response.data, fromMap: ReportReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );
}
