import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBvw4YNatRp_4H8uSYN6jpcgQfxDy-it2Y",
            authDomain: "trade-hive-ysklid.firebaseapp.com",
            projectId: "trade-hive-ysklid",
            storageBucket: "trade-hive-ysklid.appspot.com",
            messagingSenderId: "656179434271",
            appId: "1:656179434271:web:be62b4b5bcf672acfd162a"));
  } else {
    await Firebase.initializeApp();
  }
}
