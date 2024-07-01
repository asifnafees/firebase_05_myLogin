
import 'package:firebase_05/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBASH2hPeMaoC0BpKuwyESzQzrU7dHF8j8",
        appId: "1:959873388810:android:46c11c40a239fc69fb2af3",
        messagingSenderId:"Done",
        projectId:  "fir-myapp-f72ed")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
      );
  }
}

