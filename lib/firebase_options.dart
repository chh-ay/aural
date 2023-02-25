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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD9jmmkjvkv15cHEI1EqxXklVHbFc-7-Qc',
    appId: '1:358411713449:web:82974bebbe980f06de62b8',
    messagingSenderId: '358411713449',
    projectId: 'aural-16',
    authDomain: 'aural-16.firebaseapp.com',
    storageBucket: 'aural-16.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKi2Bn9SMgv2fCrz5UZ-TwKLhR9haNXHg',
    appId: '1:358411713449:android:bb2afcf3f78592dfde62b8',
    messagingSenderId: '358411713449',
    projectId: 'aural-16',
    storageBucket: 'aural-16.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMGTQfbRUmi4awJGVuuEmcGSNErm4zbjE',
    appId: '1:358411713449:ios:5422e015171e5cf8de62b8',
    messagingSenderId: '358411713449',
    projectId: 'aural-16',
    storageBucket: 'aural-16.appspot.com',
    androidClientId: '358411713449-cu7aldbn6ahifa21vp7rli9fvqa3otb9.apps.googleusercontent.com',
    iosClientId: '358411713449-76pnk3t3csmiio43562onm96v22t6g91.apps.googleusercontent.com',
    iosBundleId: 'com.example.aural',
  );
}
