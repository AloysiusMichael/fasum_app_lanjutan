// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqI6P8eubxzsjghCiYlKeNcj2dA6AZD8s',
    appId: '1:829645055585:web:12e49c628c4273f226ec20',
    messagingSenderId: '829645055585',
    projectId: 'fasum-app-fd47d',
    authDomain: 'fasum-app-fd47d.firebaseapp.com',
    storageBucket: 'fasum-app-fd47d.appspot.com',
    measurementId: 'G-5VZBW1JE92',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBm_7ScGoq4DBiP-J1IYeu0e1jZTcoFKK0',
    appId: '1:829645055585:android:d136083c446139ed26ec20',
    messagingSenderId: '829645055585',
    projectId: 'fasum-app-fd47d',
    storageBucket: 'fasum-app-fd47d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOr72mI8EX1Ze_hn7Ft4wX7M0tkLJqgBU',
    appId: '1:829645055585:ios:c32d08b29de18e8726ec20',
    messagingSenderId: '829645055585',
    projectId: 'fasum-app-fd47d',
    storageBucket: 'fasum-app-fd47d.appspot.com',
    androidClientId: '829645055585-pnupfc4ej4qtn8pm33s37vu8491mafo7.apps.googleusercontent.com',
    iosClientId: '829645055585-vejugff2f6ibdqqufitpvf3isde4pcgr.apps.googleusercontent.com',
    iosBundleId: 'com.example.fasumApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOr72mI8EX1Ze_hn7Ft4wX7M0tkLJqgBU',
    appId: '1:829645055585:ios:c32d08b29de18e8726ec20',
    messagingSenderId: '829645055585',
    projectId: 'fasum-app-fd47d',
    storageBucket: 'fasum-app-fd47d.appspot.com',
    androidClientId: '829645055585-pnupfc4ej4qtn8pm33s37vu8491mafo7.apps.googleusercontent.com',
    iosClientId: '829645055585-vejugff2f6ibdqqufitpvf3isde4pcgr.apps.googleusercontent.com',
    iosBundleId: 'com.example.fasumApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqI6P8eubxzsjghCiYlKeNcj2dA6AZD8s',
    appId: '1:829645055585:web:12e49c628c4273f226ec20',
    messagingSenderId: '829645055585',
    projectId: 'fasum-app-fd47d',
    authDomain: 'fasum-app-fd47d.firebaseapp.com',
    storageBucket: 'fasum-app-fd47d.appspot.com',
    measurementId: 'G-5VZBW1JE92',
  );

}