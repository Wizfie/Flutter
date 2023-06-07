// ignore_for_file: file_names

import 'package:flutter/material.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Experience'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'My Work Experience',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 8),
            Card(
              child: ListTile(
                title: Text('Software Developer'),
                subtitle: Text('XXX Company'),
                trailing: Text('Jan 2020 - Present'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Software Engineer'),
                subtitle: Text('ASD Company'),
                trailing: Text('Jul 2018 - Dec 2019'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Quality Assurance'),
                subtitle: Text('XYZ Company'),
                trailing: Text('Jul 2017 - Dec 2018'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Intership'),
                subtitle: Text('AAA Company'),
                trailing: Text('may 2017 - june 2017'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
