part of '../data.dart';

class UserDataSource {

  void login({
    required final String mobile,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/user/auth/login",
        body: <String, dynamic>{"phone_number": mobile},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void verifyNumber({
    required final String mobile,
    required final String verifyCode,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/user/auth/verifyNumber",
        body: <String, dynamic>{'phone_number': mobile, 'verify_code': verifyCode},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getUser({
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/user/auth/getUser",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getUserById({
    required final int userId,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/user/auth/getUserById?id=$userId",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );


  void increaseCredit({
    required final int price,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpPost(
        url: "${AppConstants.baseURL}/user/auth/increaseCredit",
        body: <String, String>{'credit':price.toString()},
        encodeBody: false,
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void getUserByFilter({
    required final String fullName,
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) {
    // final Map<String, dynamic> _params = <String, String>{};
    // _params.addAll(<String,String>{'name': filter.fullName??''});
    // if(mainCategoryId!=null)_params.addAll(<String,String>{'main_category_id': mainCategoryId.toString()});
    // if(subCategoryId1!=null)_params.addAll(<String,String>{'sub_category_id_1': subCategoryId1.toString()});
    // if(subCategoryId2!=null)_params.addAll(<String,String>{'sub_category_id_2': subCategoryId2.toString()});
    // if(subCategoryId3!=null)_params.addAll(<String,String>{'sub_category_id_3': subCategoryId3.toString()});
    // _params.addAll(filter.toMap());
    httpGet(
      url: Uri.parse("${AppConstants.baseURL}/user/auth/getUserList?full_name=$fullName").toString(),
      // url: "${AppConstants.baseURL}/user/auth/getUser",
      action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
      error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
      failure: failure,
    );
  }

  void getTeachers({
    required final Function(GenericResponse<UserReadDto> response) onResponse,
    required final Function(GenericResponse<dynamic> errorResponse) onError,
    required final Function(dynamic error) failure,
  }) =>
      httpGet(
        url: "${AppConstants.baseURL}/user/auth/getTeachers",
        action: (final Response<dynamic> response) => onResponse(GenericResponse<UserReadDto>.fromJson(response.data, fromMap: UserReadDto.fromMap)),
        error: (final Response<dynamic> response) => onError(GenericResponse<dynamic>.fromJson(response.data)),
        failure: failure,
      );

  void updateProfile({
    required final VoidCallback onResponse,
    required final VoidCallback onError,
    required final Function(dynamic error) failure,
    final int? levelId,
    final int? majorId,
    final int? gender,
    final String? type,
    final String? email,
    final String? phoneNumber,
    final String? fullName,
    final String? website,
    final String? nationalCode,
    final String? avatarPath,
    final String? evidencePath,
  }) async {
    final Dio dio = Dio();

    try {
      final FormData data = FormData.fromMap(<String, dynamic>{
        'avatar':(avatarPath??'')!=''?  await MultipartFile.fromFile(avatarPath!, filename: avatarPath.split('/').last):null,
        'evidence': (evidencePath??'')!=''  ? await MultipartFile.fromFile(evidencePath!, filename: evidencePath.split('/').last) : '',
        'full_name': fullName,
        'level_id': levelId,
        'website': website,
        'email': email,
        'phone_number': phoneNumber,
        'major_id': majorId,
        'gender': gender,
        'type': type,
        'national_code': nationalCode,
      });

      final Response<dynamic> response = await dio.post(
        '${AppConstants.baseURL}/user/auth/profile',
        onSendProgress: (final int count, final int total) async {
          // double progress=0;
          // final double d1 = double.parse(total.toString());
          // final double d2 = double.parse(count.toString());
          // final double d = d2 / (d1 / 100);
          // final String d3 = d.toStringAsFixed(0);
          // progress = double.parse(d3);
        },
        data: data,
        options: Options(headers: <String, String>{
          "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
        }),
      );

      if (response.data['status'] == 1) {
        onResponse();
      } else {
        onError();
      }
    } catch (e) {
      // error(Response<dynamic>(statusCode: 999, requestOptions: RequestOptions()));
      failure.call(e);
    }
  }
}
