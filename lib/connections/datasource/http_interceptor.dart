part of '../data.dart';

Future<void> request(
  final String url,
  final EHttpMethod httpMethod,
  final Function(Response<dynamic> response) action,
  final Function(Response<dynamic> response) error, {
  required final Function(dynamic error) failure,
  final String? queryOrMutation,
  final dynamic body,
  final bool encodeBody = true,
  final Map<String, String>? headers,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(seconds: 30),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async {
  try {
    final Map<String, String> header = <String, String>{
      "Authorization": 'Bearer ${getString(AppConstants.token) ?? ""}',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    if (headers != null) header.addAll(headers);

    final Dio dio = Dio();

    Response<dynamic> response = Response<dynamic>(requestOptions: RequestOptions());
    dynamic params;
    if (body != null) {
      if (encodeBody) {
        params = body.toJson();
      } else {
        params = body;
      }
    }

    dio.interceptors.add(RetryInterceptor(
      dio: dio,
      logPrint: print, // specify log function (optional)
      retryDelays: const <Duration>[
        // set delays between retries (optional)
        Duration(seconds: 1), // wait 1 sec before first retry
        Duration(seconds: 2), // wait 2 sec before second retry
        Duration(seconds: 3), // wait 3 sec before third retry
      ], toNoInternetPageNavigator: Future<void>.value,
    ));

    if (httpMethod == EHttpMethod.get) response = await dio.get(url, options: Options(headers: header));
    if (httpMethod == EHttpMethod.post) response = await dio.post(url, data: params, options: Options(headers: header));
    if (httpMethod == EHttpMethod.put) response = await dio.put(url, data: params, options: Options(headers: header));
    if (httpMethod == EHttpMethod.patch) response = await dio.patch(url, data: params, options: Options(headers: header));
    if (httpMethod == EHttpMethod.delete) response = await dio.delete(url, options: Options(headers: header));

    if (response.isSuccessful() && response.data['status'] == 1) {
      action(response);
    } else {
      error(response);
    }
  } catch (error) {
    // error(Response<dynamic>(statusCode: 999, requestOptions: RequestOptions()));
    failure.call(error);
  }
}

Future<void> httpGet({
  required final String url,
  required final Function(Response<dynamic> response) action,
  required final Function(Response<dynamic> response) error,
  required final Function(dynamic error) failure,
  final Map<String, String>? headers,
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    request(
      url,
      EHttpMethod.get,
      action,
      error,
      headers: headers,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
      failure: failure,
    );

Future<void> httpPost({
  required final String url,
  required final Function(Response<dynamic> response) action,
  required final Function(Response<dynamic> response) error,
  required final Function(dynamic error) failure,
  final Map<String, String>? headers,
  final dynamic body,
  final bool encodeBody = true,
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    request(
      url,
      EHttpMethod.post,
      action,
      error,
      body: body,
      encodeBody: encodeBody,
      headers: headers,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
      failure: failure,
    );

Future<void> httpPut({
  required final String url,
  required final Function(Response<dynamic> response) action,
  required final Function(Response<dynamic> response) error,
  required final Function(dynamic error) failure,
  final Map<String, String>? headers,
  final dynamic body,
  final bool encodeBody = true,
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    request(
      url,
      EHttpMethod.put,
      action,
      error,
      body: body,
      encodeBody: encodeBody,
      headers: headers,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
      failure: failure,
    );

Future<void> patch({
  required final String url,
  required final Function(Response<dynamic> response) action,
  required final Function(Response<dynamic> response) error,
  required final Function(dynamic error) failure,
  final Map<String, String>? headers,
  final dynamic body,
  final bool encodeBody = true,
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    request(
      url,
      EHttpMethod.patch,
      action,
      error,
      body: body,
      encodeBody: encodeBody,
      headers: headers,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
      failure: failure,
    );

Future<void> httpDelete({
  required final String url,
  required final Function(Response<dynamic> response) action,
  required final Function(Response<dynamic> response) error,
  required final Function(dynamic error) failure,
  final Map<String, String>? headers,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    request(
      url,
      EHttpMethod.delete,
      action,
      error,
      headers: headers,
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
      failure: failure,
    );

enum EHttpMethod { get, post, put, patch, delete }

extension HTTP on Response<dynamic> {
  bool isSuccessful() => (statusCode ?? 0) >= 200 && (statusCode ?? 0) <= 299 ? true : false;

  bool isServerError() => (statusCode ?? 0) >= 500 && (statusCode ?? 0) <= 599 ? true : false;
}
