import 'package:chopper/chopper.dart';

class AuthInterceptor implements RequestInterceptor{
  final String token;
  AuthInterceptor(this.token);

  @override
  Future<Request> onRequest(Request request) async {
      //pazi ka se lahko zaciklas tuki zaradi tega k se interceptor klice vsakic 
      //tuki notr preveris ce je token notr v sharedPreferences, ce je, ga uporabis (+se logika ce se je iztekel),
      //ce ga ni, mores nrdit request za token, t.j. authorization, v tem primeru pazi ker se lahko zacikla ker ta AuthInterceptor se klice vsakic pr Api-jih 
      applyHeader(request, 'Authorization', 'Bearer $token'); 
      return request; 
  }
}



//TODO
//rabis se nrdit logiko za ta interceptor
// preveris sharedPreferences tukaj ! 

//the purpose of the interceptor is to intercept the request before it is sent to the server and 
//perform any necessary modifications or checks on the request. 

//ubistvu tuki shendlas vse api klice skori ? 












