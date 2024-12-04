part of '../data.dart';

class ExampleDataSource {
  Future<void> getAllBooks({
    required final int page,
    required final Function(GenericResponse<ExampleDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
    final String? title,
  }) {
    String param = '';
    if (title != null) {
      param = '&title=$title';
    }

    return httpGet(
      url: "${AppConstants.baseURL}/book/getAllBooks?page=$page$param",
      action: (final Response<dynamic> response) => onResponse(GenericResponse<ExampleDto>.fromJson(response.data, fromMap: ExampleDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  Future<void> uploadBooks({
    required final PdfUploadReadDto model,
    required final VoidCallback onResponse,
    required final VoidCallback onError,
    required final Function(dynamic error) failure,
  }) async {
    final Dio dio = Dio();

    try {
      final FormData data = FormData.fromMap(<String, dynamic>{
        'file_name': await MultipartFile.fromFile(model.fileName ?? '', filename: (model.fileName ?? '').split('/').last),
        'cover': await MultipartFile.fromFile(model.cover ?? '', filename: (model.cover ?? '').split('/').last),
        'license_file': model.licenseFile != '' ? await MultipartFile.fromFile(model.licenseFile ?? '', filename: (model.licenseFile ?? '').split('/').last) : null,
        'type': model.type,
        'license_owner': model.licenseOwner,
        'web_url': model.webUrl,
        'title': model.title,
        'description': model.description,
        'price': model.price,
        'discount': model.discount,
        'main_category_id': model.mainCategoryId,
        'sub_category_id_1': model.subCategoryId1,
        'sub_category_id_2': model.subCategoryId2,
        'sub_category_id_3': model.subCategoryId3,
      });

      final Map<String, String> header = <String, String>{
        "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
        'accept': 'application/json',
      };
      final Response<dynamic> response = await dio.post(
        '${AppConstants.baseURL}/book/storeBook',
        data: data,
        options: Options(headers: header, contentType: 'application/json'),
      );

      if (response.statusCode == 200) {
        onResponse();
      } else {
        onError();
      }
    } catch (e) {
      failure(e);
      debugPrint("DDDDDD");
    }
  }

  void delete({
    required final String id,
    required final Function(GenericResponse<dynamic> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpDelete(
        url: "${AppConstants.baseURL}/Comment?id=$id",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<dynamic>.fromJson(response.data)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );
}
