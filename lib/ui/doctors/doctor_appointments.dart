import 'package:flutter/material.dart';
import 'package:test_lap_project/ui/login/login.dart';

import 'patients.dart';

class DoctorsAppointments extends StatelessWidget {
  const DoctorsAppointments({super.key});

  @override
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
                child: Image.asset('assets/logo.png', width: 90),
              ),
              const SizedBox(height: 15.0),
              Center(
                child: Image.asset('assets/doctors.png', width: 450),
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
                    ListTile(
                      leading: Image.asset('assets/review_patient.png', width: 50),
                      title: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const Patients()),
                                  (route) => false
                          );
                        },
                        child:  Text('Patients',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                            textAlign: TextAlign.left
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const Patients()),
                                  (route) => false
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
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
                    ListTile(
                      leading: Image.asset('assets/appoinment.png', width: 50),
                      title: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const Patients()),
                                  (route) => false
                          );
                        },
                        child:  Text('Appointments',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                            textAlign: TextAlign.left
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const Patients()),
                                  (route) => false
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
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
