import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBhk27qha5clVpMLxk_aWW2GbhVmCeq2w8",
            authDomain: "cecompraya-d44ee.firebaseapp.com",
            projectId: "cecompraya-d44ee",
            storageBucket: "cecompraya-d44ee.appspot.com",
            messagingSenderId: "909003150187",
            appId: "1:909003150187:web:9d435cbe60f360b0dff22e",
            measurementId: "G-FQDGZRC4XV"));
  } else {
    await Firebase.initializeApp();
  }
}
