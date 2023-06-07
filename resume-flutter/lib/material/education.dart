// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Education',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 8),
            Card(
              child: ListTile(
                title: Text('SMK'),
                subtitle: Text('Teknik komputer'),
                trailing: Text('Graduate'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Training Proramming'),
                subtitle: Text('XYZ Company'),
                trailing: Text('Jul 2018 - Dec 2019'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
