import 'dart:convert';

class LoginService {
  Future<Object> login(String username, String password) async {
      if(username == "srimal54" && password == "Test@123") {
        return "doctor";
      } else  if(username == "kabral54" && password == "Test@123") {
        return "patient";
      } else {
        return "Something Went Wrong!";
      }
  }
}