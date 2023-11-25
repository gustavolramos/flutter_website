import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_first_website/utils/routing.dart';
import 'package:my_first_website/utils/theme.dart';
import 'firebase_options.dart';

main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gustavo\'s Flutter Website',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: router,
    );
  }
}