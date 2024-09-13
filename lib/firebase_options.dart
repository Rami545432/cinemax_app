// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB8yzuEiuWRo7-bmt-_Fx7LT1ZC7F5h4HI',
    appId: '1:510131261228:web:2184e9303345e11c4c6689',
    messagingSenderId: '510131261228',
    projectId: 'cinemamaxapp-be698',
    authDomain: 'cinemamaxapp-be698.firebaseapp.com',
    storageBucket: 'cinemamaxapp-be698.appspot.com',
    measurementId: 'G-VG01DK2JKQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuosLn4dJtNxTCjDGcpFnkjJuz96FdCM4',
    appId: '1:510131261228:android:5c79e851aa9b126a4c6689',
    messagingSenderId: '510131261228',
    projectId: 'cinemamaxapp-be698',
    storageBucket: 'cinemamaxapp-be698.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCyr7UNajUylMVoogZd8AevkXxr-ZzcAWQ',
    appId: '1:510131261228:ios:e803a7651e9657ea4c6689',
    messagingSenderId: '510131261228',
    projectId: 'cinemamaxapp-be698',
    storageBucket: 'cinemamaxapp-be698.appspot.com',
    iosBundleId: 'com.example.cinemaxApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCyr7UNajUylMVoogZd8AevkXxr-ZzcAWQ',
    appId: '1:510131261228:ios:e803a7651e9657ea4c6689',
    messagingSenderId: '510131261228',
    projectId: 'cinemamaxapp-be698',
    storageBucket: 'cinemamaxapp-be698.appspot.com',
    iosBundleId: 'com.example.cinemaxApp',
  );
}
