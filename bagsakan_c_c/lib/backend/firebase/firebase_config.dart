import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8AsWMltFXCqpvlkKeHY20tqremqw6RWQ",
            authDomain: "bagsakancc.firebaseapp.com",
            projectId: "bagsakancc",
            storageBucket: "bagsakancc.firebasestorage.app",
            messagingSenderId: "711410764683",
            appId: "1:711410764683:web:818a95b3dde9ce17ca7d8e",
            measurementId: "G-H59G0GQ8H5"));
  } else {
    await Firebase.initializeApp();
  }
}
