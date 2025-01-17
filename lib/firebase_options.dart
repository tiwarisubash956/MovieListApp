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
    apiKey: 'AIzaSyDUUHWn4DWsoCSKT4FJpdHlv7HjJWgiung',
    appId: '1:198478337238:web:a2ce8d63ddda9f675e2577',
    messagingSenderId: '198478337238',
    projectId: 'movielistapp-41d36',
    authDomain: 'movielistapp-41d36.firebaseapp.com',
    storageBucket: 'movielistapp-41d36.firebasestorage.app',
    measurementId: 'G-FBRYBGPDNZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0Ka5-W9VxcvODzV8YveQkj5uZ2mnIlUg',
    appId: '1:198478337238:android:4a792312425060685e2577',
    messagingSenderId: '198478337238',
    projectId: 'movielistapp-41d36',
    storageBucket: 'movielistapp-41d36.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKrxP0E5DOB0k6bLGEmpDLJ-TMk6CF7uE',
    appId: '1:198478337238:ios:d09ee972708674c85e2577',
    messagingSenderId: '198478337238',
    projectId: 'movielistapp-41d36',
    storageBucket: 'movielistapp-41d36.firebasestorage.app',
    iosBundleId: 'com.example.movielistapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKrxP0E5DOB0k6bLGEmpDLJ-TMk6CF7uE',
    appId: '1:198478337238:ios:d09ee972708674c85e2577',
    messagingSenderId: '198478337238',
    projectId: 'movielistapp-41d36',
    storageBucket: 'movielistapp-41d36.firebasestorage.app',
    iosBundleId: 'com.example.movielistapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDUUHWn4DWsoCSKT4FJpdHlv7HjJWgiung',
    appId: '1:198478337238:web:eadad71dbb39e0665e2577',
    messagingSenderId: '198478337238',
    projectId: 'movielistapp-41d36',
    authDomain: 'movielistapp-41d36.firebaseapp.com',
    storageBucket: 'movielistapp-41d36.firebasestorage.app',
    measurementId: 'G-XC3VL2YNGY',
  );
}
