import 'package:flutter/material.dart';
import 'signup_step_one.dart';
import '../login/login.dart';

void main() {
  runApp(const SignUpAsPatient());
}

class SignUpAsPatient extends StatefulWidget {
  const SignUpAsPatient({super.key});

  @override
  _SignUpAsPatientState createState() => _SignUpAsPatientState();
}

class _SignUpAsPatientState extends State<SignUpAsPatient> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _contactNo = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  bool obscurePasswordText = true;
  bool obscureConfirmPasswordText = true;

  Widget buildName() {
    return TextFormField(
      controller: _name,
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
        labelText: "Name",
        hintText: 'John',
        labelStyle: TextStyle(color: Colors.black),
      ),
      validator: (value) {
        if (value == '') {
          return 'Name is required';
        }
        return null;
      }
    );
  }

  Widget buildEmail() {
    return TextFormField(
        controller: _email,
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
            Icons.mail,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: "Email",
          hintText: 'johndoe@gmail.com',
          labelStyle: TextStyle(color: Colors.black),
        ),
        validator: (value) {
          if (value == '') {
            return 'Email is required';
          }
          if (!RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
              .hasMatch(value!)) {
            return 'Please enter a valid email address';
          }
          return null;
        }
    );
  }

  Widget buildContact() {
    return TextFormField(
      controller: _contactNo,
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
          Icons.phone,
          color: Colors.black,
        ),
        filled: true,
        fillColor: Colors.white,
        labelText: "Contact No",
        hintText: '0711231212',
        labelStyle: TextStyle(color: Colors.black),
      ),
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value == '') {
          return 'Contact Number is required';
        }
        return null;
      }
    );
  }

  Widget buildPassword() {
    return TextFormField(
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
          Icons.lock,
          color: Colors.black,
        ),
        filled: true,
        fillColor: Colors.white,
        labelText: "Password",
        hintText: '*********',
        labelStyle: TextStyle(color: Colors.black),
      ),
      obscureText: obscurePasswordText, // password won't visible
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == '') {
          return 'Password is required';
        }
        return null;
      }
    );
  }

  Widget buildConfirmPassword() {
    return TextFormField(
        controller: _confirmPassword,
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
            Icons.lock,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: "Password",
          hintText: '*********',
          labelStyle: TextStyle(color: Colors.black),
        ),
        obscureText: obscureConfirmPasswordText, // password won't visible
        keyboardType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == '') {
            return 'Confirm Password is required';
          }

          if (value != _password.text) {
            return 'Password does not match';
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
                    height: 640,
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
                          buildName(),
                          const SizedBox(height: 15.0),
                          buildEmail(),
                          const SizedBox(height: 15.0),
                          buildContact(),
                          const SizedBox(height: 15.0),
                          buildPassword(),
                          const SizedBox(height: 15.0),
                          buildConfirmPassword(),
                          const SizedBox(height: 15.0),
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
                                onTap: () {
                                  final isValid = _formKey.currentState?.validate();
                                  if(isValid == true) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        backgroundColor: Colors.green,
                                        content: Text('Successfully Signup!'),
                                      ),
                                    );
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(builder: (context) => Login()),
                                            (route) => false
                                    );
                                  }
                                },
                                child: const Center(
                                  child: Text(
                                    'Sign Up',
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
                          const SizedBox(height: 8.0),
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignUpStepOne()),
                                      (route) => false
                              );
                            },
                            child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  // backgroundColor: Colors.grey,
                                ),
                                textAlign: TextAlign.center
                            ),
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
