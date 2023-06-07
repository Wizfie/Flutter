// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Super",
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Super Apps"),
          actions: [
            IconButton(
                onPressed: () {
                  print("Menu Di Klik");
                },
                icon: const Icon(Icons.mail)),
            IconButton(
                onPressed: () {
                  print("Menu Di Klik");
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  print("Settings Di Klik");
                },
                icon: const Icon(Icons.account_circle))
          ],
        ),
        body: const Center(
          child: Text(
            "Ini Aplikasi ",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 20.0,
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.cyan),
                  accountName: Text(
                    "Wisfie Syahbani",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("Wiz.fie@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      "W",
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person_outline_rounded),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.chat),
                title: const Text("Message"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_applications_sharp),
                title: const Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(' Log Out '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.green,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              ),
            ],
            onTap: (int indexOfItem) {}),
      ),
    );
  }
}
