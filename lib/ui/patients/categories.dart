import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_lap_project/ui/patients/doctors.dart';

import '../login/login.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
              left: 20, right: 20, bottom: 0, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/logo.png', width: 130),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const Doctors()),
                              (route) => false
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset('assets/Opthalmologist.png', width: 100),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Opthalmologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset('assets/Neurosurgery.png', width: 100),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Neurosurgery',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset('assets/Cardiologist.png', width: 100),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Cardiologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset('assets/Neurologist.png', width: 100),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Neurologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset('assets/otologist.png', width: 100),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Otologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset('assets/Urologist.png', width: 100),
                        const SizedBox(height: 15.0),
                        const Text(
                          'Urologist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18.0),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                          (route) => false
                  );
                },
                child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
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
    );
  }
}
