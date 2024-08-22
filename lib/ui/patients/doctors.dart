import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_lap_project/ui/patients/categories.dart';
import 'package:test_lap_project/ui/patients/doctor_info.dart';

import '../doctors/doctor_appointments.dart';
import '../doctors/patient_info.dart';

class Doctors extends StatelessWidget {
  const Doctors({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                    left: 20, right: 0, bottom: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/patient_icon.png', width: 50),
                      title: TextButton(
                        onPressed: () {
                          String doctorName = "Dr. Anne Micheal";
                          String slmcNo = "123123";
                          String specializedArea = "Opthalmologist";
                          bool availability = true;
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => DoctorInfo(doctorName, slmcNo, specializedArea, availability)),
                                  (route) => false
                          );
                        },
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  const [
                            Text(
                              'Dr. Anne Micheal',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Opthalmologist',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          String doctorName = "Dr. Anne Micheal";
                          String slmcNo = "123123";
                          String specializedArea = "Opthalmologist";
                          bool availability = true;
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => DoctorInfo(doctorName, slmcNo, specializedArea, availability)),
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
                    left: 20, right: 0, bottom: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/patient_icon.png', width: 50),
                      title: TextButton(
                        onPressed: () {
                          String doctorName = "Dr. John Doe";
                          String slmcNo = "323255";
                          String specializedArea = "Opthalmologist";
                          bool availability = false;
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => DoctorInfo(doctorName, slmcNo, specializedArea, availability)),
                                  (route) => false
                          );
                        },
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  const [
                            Text(
                              'Dr. John Doe',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Opthalmologist',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          String doctorName = "Dr. John Doe";
                          String slmcNo = "323255";
                          String specializedArea = "Opthalmologist";
                          bool availability = false;
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => DoctorInfo(doctorName, slmcNo, specializedArea, availability)),
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
                      MaterialPageRoute(builder: (context) => const Categories()),
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
