import 'package:flutter/material.dart';
import 'package:shamalcompany/screens/item.dart';

// ignore: camel_case_types
class card extends StatelessWidget {
  final String name;
  final String price;
  final String imgname;
  final String body;
  const card(
      {Key? key,
      required this.name,
      required this.price,
      required this.imgname, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  Item(name: name, body: body, itemimg: imgname)));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset(imgname),
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.right,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[900],
                  ),
                  child: Text(
                    ' $price',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text(
                    'بینینی هەموو تایبەتمەندیەکان',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
