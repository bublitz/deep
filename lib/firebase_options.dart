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
    apiKey: 'AIzaSyAydsCUhcGblOsYcJjtZ-TColJxuCo5tGo',
    appId: '1:629313412052:web:cc9ae9cc807b4cd48b1441',
    messagingSenderId: '629313412052',
    projectId: 'test-deep-link-1951b',
    authDomain: 'test-deep-link-1951b.firebaseapp.com',
    storageBucket: 'test-deep-link-1951b.appspot.com',
    measurementId: 'G-VEFXEXQLK0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEsJTxUgRW-el-EiljK7M1f46QEWNyvPM',
    appId: '1:629313412052:android:d67cd6af7347c78e8b1441',
    messagingSenderId: '629313412052',
    projectId: 'test-deep-link-1951b',
    storageBucket: 'test-deep-link-1951b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwP-suxbsSsKcGkFhkfKorL07M74jnE2M',
    appId: '1:629313412052:ios:349ea6b222c90bbb8b1441',
    messagingSenderId: '629313412052',
    projectId: 'test-deep-link-1951b',
    storageBucket: 'test-deep-link-1951b.appspot.com',
    androidClientId: '629313412052-mpmiiilj744rm87i6j4l7b0a43eofr0l.apps.googleusercontent.com',
    iosClientId: '629313412052-24neliivvsk710ke7gj3pv3lrt29t0ek.apps.googleusercontent.com',
    iosBundleId: 'com.example.teste',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwP-suxbsSsKcGkFhkfKorL07M74jnE2M',
    appId: '1:629313412052:ios:349ea6b222c90bbb8b1441',
    messagingSenderId: '629313412052',
    projectId: 'test-deep-link-1951b',
    storageBucket: 'test-deep-link-1951b.appspot.com',
    androidClientId: '629313412052-mpmiiilj744rm87i6j4l7b0a43eofr0l.apps.googleusercontent.com',
    iosClientId: '629313412052-24neliivvsk710ke7gj3pv3lrt29t0ek.apps.googleusercontent.com',
    iosBundleId: 'com.example.teste',
  );
}
