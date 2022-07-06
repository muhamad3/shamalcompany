// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final String body;
  final String itemimg;
  final String price;
  final String? length;
  final String? height;
  final String? depth;
  final String? moisture;
  final String? electricity;
  final String? heat;
  final String? radius;
  final String? batterylife;
  final String? gurante;
  const Item(
      {Key? key,
      required this.name,
      required this.body,
      required this.itemimg,
      required this.price,
      this.length,
      this.height,
      this.depth,
      this.moisture,
      this.electricity,
      this.heat,
      this.radius,
      this.batterylife,
      this.gurante})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.right,
                ),
              ),
              Image.asset(itemimg),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  body,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      'داواکردن',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
              )
            ],
          ),
        ));
  }
}
