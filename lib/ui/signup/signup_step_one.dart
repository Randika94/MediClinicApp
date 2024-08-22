import 'package:flutter/material.dart';
import '../login/login.dart';
import 'signup_as_doctor.dart';
import 'signup_as_patient.dart';

class SignUpStepOne extends StatelessWidget {
  const SignUpStepOne({super.key});

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
                child: Image.asset('assets/logo.png', width: 150),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Get Started',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Select Your Role to Signup',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 38.0
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpAsDoctor()),
                                    (route) => false
                            );
                          },
                          child:  Text('I\'m a Doctor',
                              style: TextStyle(
                                fontSize: size.height < 600 ? 18 : 21,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                              textAlign: TextAlign.left
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpAsDoctor()),
                                    (route) => false
                            );
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 38.0
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpAsPatient()),
                                    (route) => false
                            );
                          },
                          child:  Text('I\'m a Patient',
                              style: TextStyle(
                                fontSize: size.height < 600 ? 18 : 21,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                              textAlign: TextAlign.left
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpAsPatient()),
                                    (route) => false
                            );
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                          (route) => false
                  );
                },
                child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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
