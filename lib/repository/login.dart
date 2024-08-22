import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_lap_project/service/login_service.dart';

class LoginEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchLogin extends LoginEvent {
  final _username;
  final _password;

  FetchLogin(this._username, this._password);

  @override
  // TODO: implement props
  List<Object> get props => [_username,_password];
}

class LoginState extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoginInitial extends LoginState{}

class LoginRepository extends Bloc<LoginEvent, LoginState>{
  LoginService loginRepo;

  LoginRepository(this.loginRepo) : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async {
      try {
        SharedPreferences sharedPreferences;
        sharedPreferences = await SharedPreferences.getInstance();
        final response = await loginRepo.login(event._username,event._password);
        if(response == "doctor") {
          sharedPreferences.setInt('userType', 1);
        } else if(response == "patient") {
          sharedPreferences.setInt('userType', 2);
        }  else {
          sharedPreferences.setInt('userType', 3);
        }
      } catch (_) {
        print('Error $_');
        print('Something went wrong');
      }
    });
  }

}