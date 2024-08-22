import 'package:flutter/material.dart';
import 'doctor_appointments.dart';
import 'patient_info.dart';

void main() {
  runApp(Patients());
}

class Patients extends StatelessWidget {
  const Patients({super.key});

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
                child: Image.asset('assets/patient.png', width: 450),
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
                      leading: Image.asset('assets/patient_icon.png', width: 50),
                      title: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const PatientInfo()),
                                  (route) => false
                          );
                        },
                        child:  Text('Anne Micheal',
                            style: TextStyle(
                              fontSize: 19,
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
                              MaterialPageRoute(builder: (context) => const PatientInfo()),
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
                      leading: Image.asset('assets/patient_icon.png', width: 50),
                      title: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => const DoctorsAppointments()),
                                  (route) => false
                          );
                        },
                        child:  Text('John Doe',
                            style: TextStyle(
                              fontSize: 19,
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
                              MaterialPageRoute(builder: (context) => const DoctorsAppointments()),
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
                      MaterialPageRoute(builder: (context) => const DoctorsAppointments()),
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
