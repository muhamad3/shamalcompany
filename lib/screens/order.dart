import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:image_picker/image_picker.dart';

import '../firebaseapi.dart';

class Order extends StatefulWidget {
  final String name;
  final num pricenum;
  const Order({
    Key? key,
    required this.name,
    required this.pricenum,
  }) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController? name = TextEditingController();

  TextEditingController? note = TextEditingController();

  TextEditingController? phonenum = TextEditingController();

  String phonenumber = '';

  String? username;

  String? notes;

  String quantitys = '1';

  String? urldownload;

  String date=DateTime.now().toString();
  Future pickimage(source) async {
    try {
          ImagePicker imagePicker = ImagePicker();
     XFile? cimage = await imagePicker.pickImage(  
  source: source,
  imageQuality: 85,
);
      if (cimage == null) return;

      final imageTemporary = File(cimage.path);
      setState(() => file = imageTemporary);
      // ignore: empty_catches
    } on PlatformException {}
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path!;

    setState(() => file = File(path));
  }

  UploadTask? task;

  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
            const Text(
              'وێنەیەکی کارتی نیشتیمانی یان تەسکەرەکەت دابنێ',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            file != null
                ? Image.file(
                    file!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'img/id.png',
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      pickimage(ImageSource.gallery);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      'هەڵبژاردنی وێنە',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                ElevatedButton(
                    onPressed: () {
                      pickimage(ImageSource.camera);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: const Text(
                      'گرتنی وێنە',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ))
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ناوی سیانی',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: TextField(
                controller: phonenum,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'ژمارەی تەلەفۆن'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.pricenum < 750
                      ? "${widget.pricenum * int.parse(quantitys)}\$"
                      : "${widget.pricenum * int.parse(quantitys)}IQD",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const Text(
                  'نرخ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                CustomNumberPicker(
                  initialValue: 1,
                  maxValue: 100,
                  minValue: 1,
                  step: 1,
                  onValue: (value) {
                    setState(() {
                      quantitys = value.toString();
                    });
                  },
                ),
                const Text(
                  'بڕی کاڵا',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: note,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '(ئارەزومەندانەیە)تێبینی'),
                maxLines: 5,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (file != null && name != null && phonenum != null) {
                  phonenumber = phonenum?.value.text ?? '';
                  username = name?.value.text;
                  notes = note?.value.text;
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              content: SizedBox.fromSize(
                            child: Column(children: [
                              Image.file(
                                file!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(username!,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                  const Text(": ناوی سیانی ",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(phonenumber,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                  const Text(": ژمارەی تەلەفۆن",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(quantitys,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                  const Text(": بڕی کاڵا",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                      widget.pricenum < 750
                                          ? "${widget.pricenum *
                                                      int.parse(quantitys)}\$"
                                          : "${widget.pricenum *
                                                      int.parse(quantitys)}IQD",
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                  const Text(": نرخی گشتی",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(notes ?? '',
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                  const Text(": تێبینی",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      onPressed: () async {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'تکایە چاوەڕوانبە',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700))));
                                        Navigator.pop(context);
                                        await savedata();
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                      ),
                                      child: const Text(
                                        'بەردەوامبوون',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      )),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                      ),
                                      child: const Text(
                                        'گەرانەوە',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      )),
                                ],
                              )
                            ]),
                          )));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          "تکایە ناو و ژمارەی تەلەفۆن بنووسە و ڕەسم دابنێ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700))));
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                fixedSize: MaterialStateProperty.all(const Size.fromWidth(180)),
              ),
              child: const Text('تۆمارکردن',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            ),
          ])),
        ));
  }

  Future savedata() async {
    phonenumber = phonenum?.value.text ?? '';
    username = name?.value.text;
    notes = note?.value.text;
    await uploadFile();
    FirebaseFirestore.instance
        .collection('requests')
        .doc(phonenumber + date)
        .set({
      'productname': widget.name,
      'username': username,
      'phonenumber': phonenumber,
      'quantity': quantitys,
      'notes': notes,
      'date':date,
    });
  }

  Future uploadFile() async {
    if (file == null) return;
    task = FirebaseApi.uploadFile('ids/$date$username.jpg', file!);

    if (task == null) return;

    await task!.whenComplete(() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('داواکەت بە سەرکەوتوی تۆمار کرا',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700))));
    });
  }
}
