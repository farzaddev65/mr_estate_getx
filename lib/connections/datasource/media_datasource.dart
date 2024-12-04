part of '../data.dart';

class MediaDataSource {
  void getTrainingCourses({
    required final Function(GenericResponse<MediaRead> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
    final String? title,
    final String? query,
    final String? fullName,
    final int? page,
  }) {
    final Map<String, dynamic> _params = <String, String>{};
    if (title != null) _params.addAll(<String, String>{'title': title});
    if (fullName != null) _params.addAll(<String, String>{'full_name': fullName});
    if (query != null) _params.addAll(<String, String>{'query': query});
    if (page != null) _params.addAll(<String, String>{'page': page.toString()});

    httpGet(
      url: Uri.parse("${AppConstants.baseURL}/trainingcourse/getTrainingCourses").replace(queryParameters: _params).toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<MediaRead>.fromJson(response.data, fromMap: MediaRead.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  void getTrainingCoursesByUserId({
    required final int userId,
    required final int page,
    required final Function(GenericResponse<MediaRead> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) {
    httpGet(
      url: Uri.parse("${AppConstants.baseURL}/trainingcourse/getTrainingCoursesByUserId?userId=$userId&page=$page").toString(),
      action: (final Response<dynamic> response) => onResponse(GenericResponse<MediaRead>.fromJson(response.data, fromMap: MediaRead.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  void getTrainingCourseById({
    required final int id,
    required final Function(GenericResponse<MediaData> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/trainingcourse/getTrainingCourseById/$id",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void storeTrainingCourse({
    required final Function(GenericResponse<MediaData> response) onResponse,
    required final VoidCallback onError,
    required final Function(dynamic error) failure,
    required final String title,
    required final String cover,
    required final int mainCategoryId,
    required final int subCategoryId1,
    required final int subCategoryId2,
    required final int subCategoryId3,
    required final int price,
    required final String description,
    required final String type,
    required final List<ChaptersDto> chapters,
    final String? licenseFile,
    final String? licenseOwner,
    final String? webUrl,
    final int? discount,
  }) async {
    final Dio dio = Dio();

    try {
      debugPrint('ddddd');//
      final String ff = chapters.map((final ChaptersDto dto) => dto.toJson()).toList().toString();
      debugPrint('ddddd');//
      // final String fff= List<dynamic>.from(videos!.map((final VideosDto x) => x.toJson())).toString();


      final FormData data = FormData.fromMap(<String, dynamic>{
        'title': title,
        'main_category_id': mainCategoryId,
        'sub_category_id_1': subCategoryId1,
        'sub_category_id_2': subCategoryId2,
        'sub_category_id_3': subCategoryId3,
        'chapters': ff,
        'price': price,
        'description': description,
        'discount': discount,
        'cover': await MultipartFile.fromFile(cover, filename: cover.split('/').last),
        'license_file':licenseFile!=''? await MultipartFile.fromFile(licenseFile ?? '', filename: (licenseFile ?? '').split('/').last):null,
        'type': type,
        'license_owner': licenseOwner,
        'web_url': webUrl,
      }); //


      final Map<String, String> header = <String, String>{
        "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
        'accept': 'application/json',
      };
      final Response<dynamic> response = await dio.post(
        '${AppConstants.baseURL}/trainingcourse/storeTrainingCourse',
        data: data,
        options: Options(headers: header, contentType: 'application/json'),
      );

      if (response.statusCode == 200) {
        onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap));
      } else {
        onError();
      }





      // final Response<dynamic> response = await dio.post(
      //   '${AppConstants.baseURL}/trainingcourse/storeTrainingCourse',
      //   data: data,
      //   options: Options(headers: <String, String>{
      //     "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
      //     'content-type': 'application/json',
      //     'accept': 'application/json',
      //   }),
      // );
      //
      // debugPrint("FFFFF");

      // if (response.isSuccessful()) {
      //   onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap));
      // } else {
      //   onError();
      // }
    } catch (e) {
      // error(Response<dynamic>(statusCode: 999, requestOptions: RequestOptions()));
      failure.call(e.toString());
    }
  }

  void updateTrainingCourse({
    required final Function(GenericResponse<MediaData> response) onResponse,
    required final VoidCallback onError,
    required final Function(dynamic error) failure,
    required final int id,
    required final String title,
    required final String cover,
    required final int mainCategoryId,
    required final int subCategoryId1,
    required final int subCategoryId2,
    required final int subCategoryId3,
    required final int price,
    required final String description,
    required final List<ChaptersDto> chapters,
  }) async {
    final Dio dio = Dio();

    try {
      final String ff = chapters.map((final ChaptersDto dto) => dto.toJson()).toList().toString();
      // final String fff= List<dynamic>.from(videos!.map((final VideosDto x) => x.toJson())).toString();

      final FormData data = FormData.fromMap(<String, dynamic>{
        'cover': await MultipartFile.fromFile(cover, filename: cover.split('/').last),
        "chapters": ff,
        'title': title,
        'main_category_id': mainCategoryId.toString(),
        'sub_category_id_1': subCategoryId1.toString(),
        'sub_category_id_2': subCategoryId2.toString(),
        'sub_category_id_3': subCategoryId3.toString(),
        'price': price,
        'description': description,
      }); //
      final Map<String, String> header = <String, String>{
        "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
        'accept': 'application/json',
      };
      //
      //
      //
      final Response<dynamic> response = await dio.put(
        '${AppConstants.baseURL}/trainingcourse/updateTrainingCourse/$id',
        onSendProgress: (final int count, final int total) async {
          // double progress=0;
          // final double d1 = double.parse(total.toString());
          // final double d2 = double.parse(count.toString());
          // final double d = d2 / (d1 / 100);
          // final String d3 = d.toStringAsFixed(0);
          // progress = double.parse(d3);
        },
        data: data,
        options: Options(

            // followRedirects: false,
            // validateStatus: (final int? status) => (status??0) < 500,
            headers: header),
      );

      debugPrint("FFFFF");

      if (response.isSuccessful()) {
        onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap));
      } else {
        onError();
      }
    } catch (e) {
      // error(Response<dynamic>(statusCode: 999, requestOptions: RequestOptions()));
      failure.call(e.toString());
    }
  }

  void addChapters({
    required final int id,
    required final String title,
    required final int price,
    required final List<ChaptersDto> chapters,
    required final Function(GenericResponse<MediaData> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) {
    final String ff = chapters.map((final ChaptersDto dto) => dto.toJson()).toList().toString();
    httpPut(
      body: <String, String>{
        'title': title,
        'chapters': ff,
        'price': price.toString(),
      },
      encodeBody: false,
      url: "${AppConstants.baseURL}/trainingcourse/updateTrainingCourse/$id",
      action: (final Response<dynamic> response) => onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  void storeTrainingCourseVideo({
    required final Function(GenericResponse<MediaData> response) onResponse,
    required final VoidCallback onError,
    required final Function(dynamic error) failure,
    required final int id,
    required final String cover,
  }) async {
    final Dio dio = Dio();

    try {
      // final String fff= List<dynamic>.from(videos!.map((final VideosDto x) => x.toJson())).toString();
      final FormData data = FormData.fromMap(<String, dynamic>{
        'cover': await MultipartFile.fromFile(cover, filename: cover.split('.').last),
        "id": id,
      }); //
      debugPrint("FFFFF");
      final Response<dynamic> response = await dio.post(
        '${AppConstants.baseURL}/trainingcourse/uploadTrainingCourseVideo',
        onSendProgress: (final int count, final int total) async {
          // double progress=0;
          // final double d1 = double.parse(total.toString());
          // final double d2 = double.parse(count.toString());
          // final double d = d2 / (d1 / 100);
          // final String d3 = d.toStringAsFixed(0);
          // progress = double.parse(d3);
        },
        data: data,
        options: Options(

            // followRedirects: false,
            // validateStatus: (final int? status) => (status??0) < 500,
            headers: <String, String>{
              "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
              "Accept": "application/json",
            }),
      );

      debugPrint("FFFFF");

      if (response.isSuccessful()) {
        onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap));
      } else {
        onError();
      }
    } catch (e) {
      // error(Response<dynamic>(statusCode: 999, requestOptions: RequestOptions()));
      failure.call(e.toString());
    }
  }

  void uploadTrainingCourseVideoByChapter({
    required final Function(GenericResponse<MediaData> response) onResponse,
    required final VoidCallback onError,
    required final Function(dynamic error) failure,
    required final int chapterId,
    required final String duration,
    required final String filePath,
  }) async {
    final Dio dio = Dio();

    try {
      // final String fff= List<dynamic>.from(videos!.map((final VideosDto x) => x.toJson())).toString();
      final FormData data = FormData.fromMap(<String, dynamic>{
        'file': await MultipartFile.fromFile(filePath, filename: filePath.split('.').last),
        "chapterId": chapterId,
        "duration": duration,
      }); //
      debugPrint("FFFFF");
      final Response<dynamic> response = await dio.post(
        '${AppConstants.baseURL}/trainingcourse/uploadTrainingCourseVideoByChapter',
        onSendProgress: (final int count, final int total) async {
          // double progress=0;
          // final double d1 = double.parse(total.toString());
          // final double d2 = double.parse(count.toString());
          // final double d = d2 / (d1 / 100);
          // final String d3 = d.toStringAsFixed(0);
          // progress = double.parse(d3);
        },
        data: data,
        options: Options(

            // followRedirects: false,
            // validateStatus: (final int? status) => (status??0) < 500,
            headers: <String, String>{
              "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
              "Accept": "application/json",
            }),
      );

      debugPrint("FFFFF");

      if (response.isSuccessful()) {
        onResponse(GenericResponse<MediaData>.fromJson(response.data, fromMap: MediaData.fromMap));
      } else {
        onError();
      }
    } catch (e) {
      // error(Response<dynamic>(statusCode: 999, requestOptions: RequestOptions()));
      failure.call(e.toString());
    }
  }
}
