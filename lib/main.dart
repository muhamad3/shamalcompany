import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shamalcompany/screens/admin.dart';
import 'package:shamalcompany/screens/home.dart';
import 'package:shamalcompany/screens/item.dart';
import 'package:shamalcompany/screens/order.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/item': (context) =>
          const Item(body: '', itemimg: '', name: '', price: '', pricenum: 0),
      '/order': (context) => const Order(name: '', pricenum: 0),
      '/admin': (context) => const Admin(),
    });
  }
}
