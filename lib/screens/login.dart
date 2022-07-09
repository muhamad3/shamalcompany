// ignore_for_file: file_names, non_constant_identifier_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String Email = '';
  String Password = '';

  String? mail = 'no email available';
  String? name = 'no name available';
  String? phonenumber = 'no phonenumber available';
  String? location = 'no location available';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('چونەژوورەوەی ئەدمینن',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
        Image.asset('img/avatar.png', width: 100, height: 100),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: TextFormField(
            controller: email,
            textInputAction: TextInputAction.done,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'example@gmail.com'),
          ),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
        Container(
          child: TextField(
            controller: password,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '******'),
            obscureText: true,
          ),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
        ElevatedButton(
          onPressed: () async {
            Email = email.value.text;
            Email = Email.trim();
            Email = Email.toLowerCase();
            Password = password.value.text;
            loginWithEmailAndPassword(Email, Password);
          },
          child: const Text('Login'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.orange[900] ?? Colors.black),
          ),
        ),
      ],
    ));
  }

  loginWithEmailAndPassword(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Navigator.popAndPushNamed(context, '/admin');
    });
  }
}
