import 'package:flutter/material.dart';
import 'package:shamalcompany/screens/item.dart';

// ignore: camel_case_types
class card extends StatelessWidget {
  final String name;
  final String price;
  final String imgname;
  final String body;
  final String? length;
  final String? height;
  final String? depth;
  final String? moisture;
  final String? electricity;
  final String? heat;
  final String? radius;
  final String? batterylife;
  final String? gurante;
  const card(
      {Key? key,
      required this.name,
      required this.price,
      required this.imgname,
      required this.body,
      this.length,
      this.height,
      this.depth,
      this.moisture,
      this.electricity, this.heat, this.radius, this.batterylife, this.gurante})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Item(
                    name: name,
                    body: body,
                    itemimg: imgname,
                    price: price,
                  )));
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
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                textAlign: TextAlign.right,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
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
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      'بینینی هەموو تایبەتمەندیەکان',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
