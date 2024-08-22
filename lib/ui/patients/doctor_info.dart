import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_lap_project/ui/patients/doctors.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorInfo extends StatefulWidget {
  String doctorName;
  String slmcNo;
  String specializedArea;
  bool availability;
  DoctorInfo(this.doctorName, this.slmcNo, this.specializedArea, this.availability);

  @override
  _DoctorInfoState createState() => _DoctorInfoState(doctorName, slmcNo, specializedArea, availability);
}

class _DoctorInfoState extends State<DoctorInfo> {
  final String doctorName;
  final String slmcNo;
  final String specializedArea;
  final bool availability;

  _DoctorInfoState(this.doctorName, this.slmcNo, this.specializedArea, this.availability);

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
                children: [
                  const Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 90.0
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    doctorName,
                    style: const TextStyle(
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
                  children: <Widget>[
                    ListTile(
                      leading: const Text("Dr. Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text(doctorName,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Text("SLMC No",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text(slmcNo,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    (availability ==  false) ? const ListTile(
                      leading: Text("Available",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Text('Not Available',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ) : ListTile(
                      leading: const Text("Available",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget> [
                          Text(
                            '2023-04-24 10:30 am',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            '2023-04-17 10:30 am',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            '2023-05-01 10:30 am',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    (availability ==  true) ? const SizedBox(height: 18.0) : const SizedBox(height: 5.0),
                    (availability ==  true) ? Container(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      height: 55.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(30.0),
                        // color: Theme.of(context).primaryColor,
                        // color: Colors.deepPurple,
                        color: const Color(0xFF195C41),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () async => Uri(scheme: 'tel', path: '94712931033'),
                          child: const Center(
                            child: Text(
                              'Make an Appointment',
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
                    ) : const SizedBox(height: 0.0),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Doctors()),
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
