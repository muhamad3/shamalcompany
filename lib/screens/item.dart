import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final String body;
  final String itemimg;
  const Item(
      {Key? key, required this.name, required this.body, required this.itemimg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              textAlign: TextAlign.right,
            ),
          ),
          Image.asset(itemimg),
          Text(body, textAlign: TextAlign.right,)
        ],
      ),
    );
  }
}
