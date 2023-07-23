import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCUB8Z-YoJa2KDoqVAy7lJzrKcHe5FGbis",
            authDomain: "integration-family.firebaseapp.com",
            projectId: "integration-family",
            storageBucket: "integration-family.appspot.com",
            messagingSenderId: "795686645821",
            appId: "1:795686645821:web:893e4ba5bb3a03bfc3ba54",
            measurementId: "G-5V55Q2VM9G"));
  } else {
    await Firebase.initializeApp();
  }
}
