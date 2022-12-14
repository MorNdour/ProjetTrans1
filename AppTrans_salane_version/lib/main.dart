import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';
import 'screens/overview_screen.dart';
import 'screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.android, name: "dev project");
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Agritech',
        theme: ThemeData(
            primarySwatch: Colors.green,
            backgroundColor: Colors.white,
            // ignore: deprecated_member_use
            accentColor: Colors.deepPurple,
            // ignore: deprecated_member_use
            accentColorBrightness: Brightness.dark,
            buttonTheme: ButtonTheme.of(context).copyWith(
                buttonColor: Colors.pink,
                textTheme: ButtonTextTheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
        home: StreamBuilder(
          key: const ValueKey('stream'),
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, userSnapshot) {
            if (userSnapshot.connectionState == ConnectionState.waiting) {
              return const SplashScreen();
            }
            if (userSnapshot.hasData) {
              return const OverviewScreen();
            }
            return const HomeScreen();
          },
        ));
  }
}
