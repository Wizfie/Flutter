import 'package:flutter/material.dart';
import 'package:resume_app/material/contact.dart';
import 'package:resume_app/material/education.dart';

import 'work.dart';
import 'about.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const About(),
      routes: {
        '/Me': (context) => const About(),
        '/Work': (context) => const WorkExperience(),
        '/Edu': (context) => const Education(),
        '/Cont': (context) => const Contact(),
      },
    );
  }
}
