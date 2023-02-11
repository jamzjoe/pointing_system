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
    apiKey: 'AIzaSyDQ_pneYApq5bN8xDIp4YqX97jjTQVoLRQ',
    appId: '1:41039967609:web:9d18dfaa44803091aaeba8',
    messagingSenderId: '41039967609',
    projectId: 'godesq-pointing-system',
    authDomain: 'godesq-pointing-system.firebaseapp.com',
    storageBucket: 'godesq-pointing-system.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACfol3GG9gFijYdov7vsaZr49Ed5y48gs',
    appId: '1:41039967609:android:dd079f1ec0007f39aaeba8',
    messagingSenderId: '41039967609',
    projectId: 'godesq-pointing-system',
    storageBucket: 'godesq-pointing-system.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhDNoEoEGqg14Pyf9j0x1mQ92rRSWgkzI',
    appId: '1:41039967609:ios:d467305987498892aaeba8',
    messagingSenderId: '41039967609',
    projectId: 'godesq-pointing-system',
    storageBucket: 'godesq-pointing-system.appspot.com',
    iosClientId: '41039967609-6sk3rfasee2grvntqf3oedlb5bvl8h64.apps.googleusercontent.com',
    iosBundleId: 'com.example.pointingSystem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhDNoEoEGqg14Pyf9j0x1mQ92rRSWgkzI',
    appId: '1:41039967609:ios:d467305987498892aaeba8',
    messagingSenderId: '41039967609',
    projectId: 'godesq-pointing-system',
    storageBucket: 'godesq-pointing-system.appspot.com',
    iosClientId: '41039967609-6sk3rfasee2grvntqf3oedlb5bvl8h64.apps.googleusercontent.com',
    iosBundleId: 'com.example.pointingSystem',
  );
}