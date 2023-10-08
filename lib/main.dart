import 'package:flutter/material.dart';
import 'package:my_first_website/screens/home_screen/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Guto Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
      ),
      home: const HomePage(),
    );
  }
}