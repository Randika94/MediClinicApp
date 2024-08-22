import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_lap_project/repository/login.dart';
import 'package:test_lap_project/ui/patients/categories.dart';
import 'package:test_lap_project/ui/patients/doctors.dart';

import '../../service/login_service.dart';
import '../doctors/doctor_appointments.dart';
import '../doctors/patients.dart';
import '../signup/signup_step_one.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedLap Hospital',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => LoginRepository(LoginService()),
        child: Body(),
      ),
    );
  }
}


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void initState() {
    super.initState();
  }

  Widget buildUsername() {
    return TextFormField(
        autovalidateMode: AutovalidateMode.disabled,
        controller: _username,
        cursorColor: Colors.black,
        decoration:  const InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: "Username",
          hintText: 'john123',
          labelStyle: TextStyle(color: Colors.black),
      ),
      validator: (value) {
        if (value == '') {
          return 'Username is required';
        }
        return null;
      }
    );
  }

  Widget buildPassword() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.disabled,
      controller: _password,
      cursorColor: Colors.black,
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:
            BorderRadius.all(Radius.circular(10))),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:
            BorderRadius.all(Radius.circular(10))),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        filled: true,
        fillColor: Colors.white,
        labelText: "Password",
        hintText: '*********',
        labelStyle: TextStyle(color: Colors.black),
      ),
      obscureText: true, // password won't visible
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == '') {
          return 'Password is required';
        }
        return null;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', width: 150),
                const SizedBox(height: 15.0),
                Container(
                  height: 375,
                  // _formKey!.currentState!.validate() ? 200 : 600,
                  // height: isEmailCorrect ? 260 : 182,
                  width: size.width / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 20),
                  child: Form(
                    autovalidateMode: AutovalidateMode.disabled,
                    key: _formKey,
                    child: Column(
                      children: [
                        buildUsername(),
                        const SizedBox(height: 15.0),
                        buildPassword(),
                        SizedBox(height: 15.0),
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          height: 55.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            // color: Theme.of(context).primaryColor,
                            // color: Colors.deepPurple,
                            color: const Color(0xFF195C41),
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () async {
                                final isValid = _formKey.currentState?.validate();
                                if(isValid == true) {
                                  final loginRepository = BlocProvider.of<LoginRepository>(context);
                                  loginRepository.add(FetchLogin(_username.text,_password.text));

                                  SharedPreferences sharedPreferences;
                                  sharedPreferences = await SharedPreferences.getInstance();
                                  int userType = sharedPreferences.getInt("userType");

                                  if(userType == 1) {
                                    // ignore: use_build_context_synchronously
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(builder: (context) => const DoctorsAppointments()),
                                            (route) => false
                                    );
                                  } else if(userType == 2) {
                                    // ignore: use_build_context_synchronously
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Categories()),
                                            (route) => false
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        backgroundColor: Colors.red,
                                        content: Text('Username or Password is Incorrect'),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: const Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'You have\'t any account?',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUpStepOne()),
                                        (route) => false
                                );
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

