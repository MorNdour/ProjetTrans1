import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'overview_screen.dart';
//import 'splash_screen.dart';
import 'auth_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgImage1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: <Widget>[
        Container(
          width: 220,
          padding: const EdgeInsets.only(
              left: 0.0, right: 15.0, top: 110, bottom: 0),
          child: const Text(
            'Agritech,',
            style: TextStyle(
              color: Color.fromARGB(255, 249, 251, 249),
              fontSize: 50,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          width: 230,
          padding: const EdgeInsets.only(
              left: 0.0, right: 15.0, top: 15, bottom: 120),
          child: const Text(
            'Take great care  of your plants health. ',
            style: TextStyle(
              color: Color.fromARGB(255, 250, 251, 250),
              fontSize: 40,
            ),
          ),
        ),
        Container(
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),

          width: 260,
          //color: Colors.white.withOpacity(0.3),
          padding:
              const EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AuthScreen()));
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(
                  color: Color.fromARGB(255, 89, 130, 91), fontSize: 16),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 80,
          width: 260,
          //color: Colors.white.withOpacity(0.3),
          padding:
              const EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 35),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AuthScreen()));
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              backgroundColor:
                  MaterialStateProperty.all(Colors.white.withOpacity(0.3)),
            ),
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            width: 230,
            //color: Colors.white.withOpacity(0.3),
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, top: 60, bottom: 0),
            child: const Text.rich(
              TextSpan(
                text: 'Signing in, you agree to ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Terms of use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        color: Colors.white,
                      )),
                  TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      )),
                  // can add more TextSpans here...
                ],
              ),
            )),
      ]),
    ));
  }
}
