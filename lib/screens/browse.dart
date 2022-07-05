import 'package:flutter/material.dart';
import 'package:shamalcompany/card.dart';

class Browser extends StatelessWidget {
  const Browser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const card (name: 'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',price: 'نرخ: 100,000 دینار'
        ,imgname: 'img/gps1.png',),
        const card (name: 'جی پی ئێسی چاودێری کردن و کوژاندنەوە و گوێگرتنی ئۆتۆمبێل',price: 'نرخ: 100 دۆلار'
        ,imgname: 'img/gps2.png',),
        const card (name: 'جی پی ئێسی چاودێری کردنی ئۆتۆمبێل',price: ' نرخ : 30,000 دینار'
        ,imgname: 'img/gps3.png',),
      
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/gps3.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردنی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        ' نرخ : 30,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/housewatch.png'),
                  ),
                  const Text(
                    'سیستەمی چاودێری کردنی ماڵ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 500 دۆلار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
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
                    child: Image.asset('img/cam.png'),
                  ),
                  const Text(
                    'جی پی ئێسی چاودێری کردن و کوژاندنەوەی ئۆتۆمبێل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900],
                      ),
                      child: const Text(
                        '  نرخ: 100,000 دینار',
                        style: TextStyle(
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text(
                        'بینینی هەموو تایبەتمەندیەکان',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
