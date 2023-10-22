import 'package:flutter/material.dart';
import 'package:my_first_website/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
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
    return MaterialApp(
      title: 'Gustavo\'s Flutter Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      home: const HomePage(),
    );
  }
}