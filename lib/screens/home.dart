import 'package:flutter/material.dart';
import 'package:shamalcompany/screens/Browse.dart';
import 'package:shamalcompany/screens/about.dart';
import 'package:shamalcompany/screens/login.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.info),
            icon: Icon(Icons.info_outline),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.grey,
          child: const Browser(),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          
          alignment: Alignment.center,
          child: const About(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Login(),
        ),
      ][currentPageIndex],
    );
  }
}
