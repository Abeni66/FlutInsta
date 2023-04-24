// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterinsta/Responsive/responsive_layout.dart';
import 'package:flutterinsta/Responsive/webScreenLayout.dart';
import 'package:flutterinsta/screens/login_screen.dart';
import 'package:flutterinsta/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Responsive/mobileScreenLayout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAPywp5-0o0tCPEOKhcHbH4JHgkqbDOCus',
        appId: '1:715730959359:web:bfc1e3377ca8edf66f85ca',
        messagingSenderId: '715730959359',
        projectId: 'instaclone-9bd7e',
        storageBucket: 'instaclone-9bd7e.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'clone clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
      // home: const LoginScreen(),
    );
  }
}
