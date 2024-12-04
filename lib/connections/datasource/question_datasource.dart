part of '../data.dart';

class QuestionDataSource {
  Future<void> getQuestions({
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
    final String? questionLevel,
    final int? mainCategoryId,
    final int? subCategoryId1,
    final int? subCategoryId2,
    final int? subCategoryId3,
    final int? isFull,
  }) {
    final Map<String, dynamic> _params = <String, String>{};
    if (questionLevel != null) _params.addAll(<String, String>{'questionLevel': questionLevel});
    if (mainCategoryId != null) _params.addAll(<String, String>{'main_category_id': mainCategoryId.toString()});
    if (subCategoryId1 != null) _params.addAll(<String, String>{'sub_category_id_1': subCategoryId1.toString()});
    if (subCategoryId2 != null) _params.addAll(<String, String>{'sub_category_id_2': subCategoryId2.toString()});
    if (subCategoryId3 != null) _params.addAll(<String, String>{'sub_category_id_3': subCategoryId3.toString()});
    if (isFull != null) _params.addAll(<String, String>{'isFull': isFull.toString()});
    return httpGet(
      url: Uri.parse("${AppConstants.baseURL}/question/getQuestions").replace(queryParameters: _params).toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  Future<void> questionBank({
    required final Function(GenericResponse<QuestionBankDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
    final String? questionLevel,
    final int? mainCategoryId,
    final int? subCategoryId1,
    final int? subCategoryId2,
    final List<int>? subCategoryId3,
    final int? page,
  }) {
    final Map<String, dynamic> _params = <String, String>{};
    if (mainCategoryId != null) _params.addAll(<String, String>{'main_category_id': mainCategoryId.toString()});
    if (subCategoryId1 != null) _params.addAll(<String, String>{'sub_category_id_1': subCategoryId1.toString()});
    if (subCategoryId2 != null) _params.addAll(<String, String>{'sub_category_id_2': subCategoryId2.toString()});
    if (subCategoryId3 != null) {
      subCategoryId3.forEach(
        (final int element) {
          _params.addAll(<String, String>{'sub_category_id_3[]': element.toString()});
        },
      );
    }
    if (page != null) _params.addAll(<String, String>{'page': page.toString()});
    return httpGet(
      url: Uri.parse("${AppConstants.baseURL}/question/questionBank").replace(queryParameters: _params).toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionBankDto>.fromJson(response.data, fromMap: QuestionBankDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  Future<void> automaticQuestion({
    required final Function(GenericResponse<QuestionBankDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
    final String? questionLevel,
    final int? mainCategoryId,
    final int? subCategoryId1,
    final int? subCategoryId2,
    final List<int>? subCategoryId3,
    final int? fourOptions,
    final int? rightWrong,
    final int? blank,
    final int? connector,
    final int? descriptive,
    final int? page,
    final int? isFull,
  }) {
    final Map<String, dynamic> _params = <String, String>{};
    if (mainCategoryId != null) _params.addAll(<String, String>{'main_category_id': mainCategoryId.toString()});
    if (subCategoryId1 != null) _params.addAll(<String, String>{'sub_category_id_1': subCategoryId1.toString()});
    if (subCategoryId2 != null) _params.addAll(<String, String>{'sub_category_id_2': subCategoryId2.toString()});
    if (subCategoryId3 != null) {
      subCategoryId3.forEach(
        (final int element) {
          _params.addAll(<String, String>{'sub_category_id_3[]': element.toString()});
        },
      );
    }
    if (fourOptions != null) _params.addAll(<String, String>{'FourOptions': fourOptions.toString()});
    if (rightWrong != null) _params.addAll(<String, String>{'RightWrong': rightWrong.toString()});
    if (blank != null) _params.addAll(<String, String>{'Blank': blank.toString()});
    if (connector != null) _params.addAll(<String, String>{'Connector': connector.toString()});
    if (descriptive != null) _params.addAll(<String, String>{'Descriptive': descriptive.toString()});
    if (page != null) _params.addAll(<String, String>{'page': page.toString()});
    return httpGet(
      url: Uri.parse("${AppConstants.baseURL}/question/automaticQuestion").replace(queryParameters: _params).toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionBankDto>.fromJson(response.data, fromMap: QuestionBankDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  Future<void> getLeitnerItems({
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: Uri.parse("${AppConstants.baseURL}/question/getLeitnerItems").toString(),
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  Future<void> saveLeitnerItem({
    required final int id,
    required final int answer,
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        body: <String, dynamic>{
          'id': id,
          'answer': answer,
        },
        encodeBody: false,
        url: Uri.parse("${AppConstants.baseURL}/question/saveLeitnerItem").toString(),
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  Future<void> getCompetitionQuestions({
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
    final String? questionLevel,
    final int? mainCategoryId,
    final int? subCategoryId1,
    final int? subCategoryId2,
    final int? subCategoryId3,
  }) {
    final Map<String, dynamic> _params = <String, String>{};
    if (questionLevel != null) _params.addAll(<String, String>{'questionLevel': questionLevel});
    if (mainCategoryId != null) _params.addAll(<String, String>{'main_category_id': mainCategoryId.toString()});
    if (subCategoryId1 != null) _params.addAll(<String, String>{'sub_category_id_1': subCategoryId1.toString()});
    if (subCategoryId2 != null) _params.addAll(<String, String>{'sub_category_id_2': subCategoryId2.toString()});
    if (subCategoryId3 != null) _params.addAll(<String, String>{'sub_category_id_3': subCategoryId3.toString()});
    return httpGet(
      url: Uri.parse("${AppConstants.baseURL}/question/getCompetitionQuestions").replace(queryParameters: _params).toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  void getReportQuestionResult({
    required final int resultId,
    required final Function(GenericResponse<ReportQuestionResult> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/question/getReportQuestionResult/$resultId",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<ReportQuestionResult>.fromJson(response.data, fromMap: ReportQuestionResult.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getResultCompetitionByStep({
    required final int parentId,
    required final Function(GenericResponse<CompetitionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/question/getResultCompetitionByStep?parentId=$parentId",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<CompetitionDto>.fromJson(response.data, fromMap: CompetitionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getResultCompetition({
    required final Function(GenericResponse<HistoryDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/question/getResultCompetition",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<HistoryDto>.fromJson(response.data, fromMap: HistoryDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void storeExam({
    required final PdfUploadReadDto uploadModel,
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/exam/storeExam",
        body: uploadModel,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void storeExamReport({
    required final PdfUploadReadDto uploadModel,
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/exam/storeExamReport",
        body: uploadModel,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void storeQuestionReport({
    required final StoreQuestionReport uploadModel,
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/question/storeQuestionReport",
        body: uploadModel,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void updateQuestionReportCompetition({
    required final StoreQuestionReport uploadModel,
    required final Function(GenericResponse<QuestionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPut(
        url: "${AppConstants.baseURL}/question/updateQuestionReportCompetition",
        body: uploadModel,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionDto>.fromJson(response.data, fromMap: QuestionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getUserCompetition({
    required final Function(GenericResponse<UserCompetitionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/question/getUserCompetition",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserCompetitionDto>.fromJson(response.data, fromMap: UserCompetitionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getUserCompetitionById({
    required final int id,
    required final Function(GenericResponse<UserCompetitionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/question/getUserCompetitionById?id=$id",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserCompetitionDto>.fromJson(response.data, fromMap: UserCompetitionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void startCompetition({
    required final int userId,
    required final Function(GenericResponse<StartCompetitionDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/question/startCompetition",
        body: <String, int>{"userId": userId},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<StartCompetitionDto>.fromJson(response.data, fromMap: StartCompetitionDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getReportResult({
    required final Function(GenericResponse<QuestionReportHeader> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/question/getReportResult",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<QuestionReportHeader>.fromJson(response.data, fromMap: QuestionReportHeader.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );
}
