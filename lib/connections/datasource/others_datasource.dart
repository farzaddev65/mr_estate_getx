part of '../data.dart';

class OthersDataSource {

  void getSliders({
    required final Function(GenericResponse<SlidersReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/slider/getSliders",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<SlidersReadDto>.fromJson(response.data, fromMap: SlidersReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );


   void getInviteCode({
    required final Function(GenericResponse<InviteCodeDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/user/auth/getInviteCode",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<InviteCodeDto>.fromJson(response.data, fromMap: InviteCodeDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );



}
