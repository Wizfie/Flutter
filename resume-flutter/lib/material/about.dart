// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(223, 2, 206, 241),
        title: const Text('About Me'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    color: Colors.blue,
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    alignment: Alignment.center,
                    child: Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
                CircleAvatar(
                  radius: 75.0,
                  backgroundImage: AssetImage('images/Anya_Anya.jpg'),
                ),
              ],
            ),

            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Me'),
              onTap: () {
                // Navigasi ke halaman about me
                Navigator.of(context).pushNamed('/Me');
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Work Experience'),
              onTap: () {
                // Navigasi ke halaman work experience
                Navigator.of(context).pushNamed('/Work');
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Education'),
              onTap: () {
                // Navigasi ke halaman education
                Navigator.of(context).pushNamed('/Edu');
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Contact'),
              onTap: () {
                // Navigasi ke halaman contact
                Navigator.of(context).pushNamed('/Cont');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Hello!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 75.0,
              foregroundImage: AssetImage('images/Anya.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' My name is Wisfie Syahbani',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.all(4.0),
              padding: EdgeInsets.all(17.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                "Saya adalah Lulusan SMK dari Tangerang pada tahun 2020. Saya selalu tertantang dengan proyek baru dalam pembuatan Web dan semacamnya.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Column(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.circle,
                    size: 25,
                  ),
                  title: Text('Date of Birth    :'),
                  trailing: Text('01/01/1999'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.circle,
                    size: 25,
                  ),
                  title: Text('Nationality       :'),
                  trailing: Text('Indonesian'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.circle,
                    size: 25,
                  ),
                  title: Text('Interest             :'),
                  trailing: Text('Programming'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Sekilas tentang diri saya.                                                 Thank you for visiting my page!',
            ),
          ],
        ),
      ),
    );
  }
}
