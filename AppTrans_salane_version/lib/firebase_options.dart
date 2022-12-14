// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  /*static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyDleLJiGf45FUA7wjr5L8rh_j_0aiKPxzU",
    authDomain: "apptrans-cb042.firebaseapp.com",
    databaseURL: "https://apptrans-cb042-default-rtdb.firebaseio.com",
    projectId: "apptrans-cb042",
    storageBucket: "apptrans-cb042.appspot.com",
    messagingSenderId: "259846499968",
    appId: "1:259846499968:web:a578e52d36f3bd6ccc0065",
    measurementId: "G-Z00LZF0P4Z"
  );
*/
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDleLJiGf45FUA7wjr5L8rh_j_0aiKPxzU',
    appId: '1:259846499968:android:e2c2f0a5322cfbb4cc0065',
    messagingSenderId: 'x259846499968',
    projectId: 'apptrans-cb042',
    databaseURL: 'https://apptrans-cb042-default-rtdb.firebaseio.com',
    storageBucket: 'gs://apptrans-cb042.appspot.com',
  );
/*
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'xxxxxxxxxxxxxxxxxxx',
    appId: 'xxxxxxxxxxxxxxxxxxx',
    messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
    projectId: 'xxxxxxxxxxxxxxxxxxx',
    databaseURL: 'xxxxxxxxxxxxxxxxxxx',
    storageBucket: 'xxxxxxxxxxxxxxxxxxx',
    androidClientId: 'xxxxxxxxxxxxxxxxxxx',
    iosClientId: 'xxxxxxxxxxxxxxxxxxx',
    iosBundleId: 'xxxxxxxxxxxxxxxxxxx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'xxxxxxxxxxxxxxxxxxx',
    appId: 'xxxxxxxxxxxxxxxxxxx',
    messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
    projectId: 'xxxxxxxxxxxxxxxxxxx',
    databaseURL: 'xxxxxxxxxxxxxxxxxxx',
    storageBucket: 'xxxxxxxxxxxxxxxxxxx',
    androidClientId: 'xxxxxxxxxxxxxxxxxxx',
    iosClientId: 'xxxxxxxxxxxxxxxxxxx',
    iosBundleId: 'xxxxxxxxxxxxxxxxxxx',
  );*/
}
