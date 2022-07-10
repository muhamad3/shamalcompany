// ignore_for_file: file_names, library_private_types_in_public_api

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shamalcompany/request.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  final ScrollController _scrollController = ScrollController();

  String? email;
  String? name = '';
  String? phonenumber = '';
  String? location = '';
  String? image = '';

  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<String> downloadurl(String image, String date) async {
    String downloadurl =
        await storage.ref('ids/$date$image.jpg').getDownloadURL();

    return downloadurl;
  }

  Future downloadFile(String refe, String date) async {
    Reference ref = storage.ref('ids/$date$refe.jpg');
    final url = await ref.getDownloadURL();

    final tempdir = await getTemporaryDirectory();
    final path = '${tempdir.path}/${ref.name}';

    await Dio().download(url, path);
    if (url.contains('.jpg') || url.contains('.png')) {
      await GallerySaver.saveImage(path, toDcim: true);
    } else if (url.contains('.mp4')) {
      await GallerySaver.saveVideo(path, toDcim: true);
    }
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('File saved to ${ref.name}'),
    ));
  }

  UploadTask? task;
  File? file;
  String? url;
  int? select;
  bool? type = true;

  Stream<List<Request>> readPosts() => FirebaseFirestore.instance
      .collection('requests')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Request.fromJson(doc.data())).toList());

  Widget buildpost(Request request) => GestureDetector(
      onTap: () async {},
      child: Column(
        children: [
          FutureBuilder(
              future: downloadurl(request.username!, request.date!),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(request.username!,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            const Text(": ناوی سیانی ",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(request.phonenumber ?? '',
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            const Text(": ژمارەی تەلەفۆن",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(request.productname ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              const Text(": ناوی کاڵا",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(request.quantity ?? '',
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            const Text(": بڕی کاڵا",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(request.notes ?? '',
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            const Text(": تێبینی",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 300,
                          height: 200,
                          child: Image.network(
                            snapshot.data ?? '',
                            fit: BoxFit.cover,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              downloadFile(request.username!, request.date!);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                            child: const Text(
                              'داگرتنی وێنه',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  );
                }
                return const SizedBox.shrink();
              }),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: const Text(
          'Admin',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(children: [
          Expanded(
              child: StreamBuilder<List<Request>>(
            stream: readPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('erorr');
              }
              if (snapshot.hasData) {
                final post = snapshot.data!;
                return ListView(
                  controller: _scrollController,
                  children: post.map(buildpost).toList(),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ))
        ]),
      ),
    );
  }
}
