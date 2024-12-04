part of '../data.dart';

class FinancialDataSource {
  void paymentBook({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentBook",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentBookCredit({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentBookCredit",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentTraining({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentTraining",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentTrainingCredit({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentTrainingCredit",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentExam({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentExam",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentExamCredit({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentExamCredit",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );
  void paymentUserQuestionCredit({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentUserQuestionCredit",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentMajor({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentMajor",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentMajorCredit({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentMajorCredit",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentPackage({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentPackage",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void paymentPackageCredit({
    required final int id,
    required final Function(GenericResponse<FinancialDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/financial/paymentPackageCredit",
        body: <String, String>{'id': '$id'},
        encodeBody: false,
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<FinancialDto>.fromJson(response.data, fromMap: FinancialDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getMentorPackages({
    required final Function(GenericResponse<PackageReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/financial/getMentorPackages",
        action: (final Response<dynamic> response) =>
            onResponse(GenericResponse<PackageReadDto>.fromJson(response.data, fromMap: PackageReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );
}
