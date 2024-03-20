// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:core/core.dart';

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
    apiKey: 'AIzaSyCDdd5wuKDuQc1R9j-SYtdbTLznkQ0rHc4',
    appId: '1:626141887890:web:c0f1438aaaeb63dd12554b',
    messagingSenderId: '626141887890',
    projectId: 'pixel-battle-eb43c',
    authDomain: 'pixel-battle-eb43c.firebaseapp.com',
    storageBucket: 'pixel-battle-eb43c.appspot.com',
    measurementId: 'G-TF30L1SS8L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXmcqTGxV3DzP64QMeskzdfpLKjAa_ALo',
    appId: '1:626141887890:android:1f9ee75ecdb3e67d12554b',
    messagingSenderId: '626141887890',
    projectId: 'pixel-battle-eb43c',
    storageBucket: 'pixel-battle-eb43c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuCzW1T_Umd6EjXDwA5_ezqR0M4L9SEWQ',
    appId: '1:626141887890:ios:9c46c017f70e897112554b',
    messagingSenderId: '626141887890',
    projectId: 'pixel-battle-eb43c',
    storageBucket: 'pixel-battle-eb43c.appspot.com',
    iosBundleId: 'com.example.userApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuCzW1T_Umd6EjXDwA5_ezqR0M4L9SEWQ',
    appId: '1:626141887890:ios:93d6f6020556fd1712554b',
    messagingSenderId: '626141887890',
    projectId: 'pixel-battle-eb43c',
    storageBucket: 'pixel-battle-eb43c.appspot.com',
    iosBundleId: 'com.example.userApp.RunnerTests',
  );
}
