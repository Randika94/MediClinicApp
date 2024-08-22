import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'patients.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

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
                child: Image.asset('assets/logo.png', width: 100),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: const [
                  Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 90.0
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Anne Micheal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
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
                  children: const <Widget>[
                    ListTile(
                      leading: Text("Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("Anne Micheal"),
                    ),
                    ListTile(
                      leading: Text("Age",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("23"),
                    ),
                    ListTile(
                      leading: Text("Gender",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("Female"),
                    ),
                    ListTile(
                      leading: Text("Birth Day",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("01-01-2000"),
                    ),
                    ListTile(
                      leading: Text("Address",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("No.123, Colombo Rd, Colombo"),
                    ),
                    ListTile(
                      leading: Text("Consulted",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("02-02-2020"),
                    ),
                    ListTile(
                      leading: Text("Aliments",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Patients()),
                          (route) => false
                  );
                },
                child: const Text(
                    'Go Back',
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
