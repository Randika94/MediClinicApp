import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup/signup_step_one.dart';

import 'login/login.dart';

void main() {
  runApp(Welcome());
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to MediLab',
      home: Body(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'DM Sans',
        primaryColor: Color(0xFF000000),
        accentColor: Color(0xFFAAAAAA),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', width: 200),
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            height: 55.0,
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              // color: Theme.of(context).primaryColor,
              // color: Colors.deepPurple,
              color: const Color(0xFF195C41),
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpStepOne()),
                          (route) => false
                  );
                },
                child: const Center(
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: const Divider(
              color: Colors.white38,
              thickness: 2,
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            height: 55.0,
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              // color: Theme.of(context).primaryColor,
              // color: Colors.deepPurple,
              color: const Color(0xFF195C41),
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                          (route) => false
                  );
                },
                child: const Center(
                  child: Text(
                    'I have an Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

