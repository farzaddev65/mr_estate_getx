part of '../data.dart';

class RateDataSource {

  void storeRateTraining({
    required final int parentId,
    required final int rate,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/rate/storeRateTraining",
        body: <String, dynamic>{"parent_id": parentId, 'rate': rate},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void storeRateBook({
    required final int parentId,
    required final int rate,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/rate/storeRateBook",
        body: <String, dynamic>{"parent_id": parentId, 'rate': rate},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void storeRateUser({
    required final int parentId,
    required final int rate,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/rate/storeRateUser",
        body: <String, dynamic>{"parent_id": parentId, 'rate': rate},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );


}
