import 'package:chopper/chopper.dart';

class AuthInterceptor implements RequestInterceptor {
  final String token;
  AuthInterceptor(this.token);

  @override
  Future<Request> onRequest(Request request) async {
    final headers = Map<String, String>.from(request.headers);
    headers['Authorization'] = 'Bearer $token';
    return request.copyWith(headers: headers);
  }
}

