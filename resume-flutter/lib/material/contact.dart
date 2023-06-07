// ignore: file_names

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact Details'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Contact Details',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                      trailing: Text('(123) 456-7890'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                      trailing: Text('Wiz.fie@gmail.com'),
                    ),
                  )
                ])));
  }
}
