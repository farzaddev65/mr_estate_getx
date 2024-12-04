part of '../data.dart';

class TransactionDataSource {

  void getMentorPayment({
    required final Function(GenericResponse<TransactionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/financial/getMentorPayment",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<TransactionDto>.fromJson(response.data, fromMap: TransactionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );


}
