import 'package:flutter/material.dart';
import 'package:shamalcompany/screens/item.dart';

// ignore: camel_case_types
class card extends StatelessWidget {
  final String name;
  final String price;
  final String imgname;
  final String body;
  final num pricenum;
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
      this.electricity,
      this.heat,
      this.radius,
      this.batterylife,
      this.gurante,
      required this.pricenum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: InkWell(
          splashColor: Colors.black,
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(imgname),
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900),
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Item(
                                name: name,
                                body: body,
                                itemimg: imgname,
                                price: price,
                                pricenum: pricenum)));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
