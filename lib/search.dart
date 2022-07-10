import 'package:flutter/material.dart';
import 'package:shamalcompany/remote_services.dart';
import 'domain.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Domain? domain;
  var isloaded = false;
  String? domainname;

  getdata() async {
    domain = await RemoteServices().getpost(domainname!);

    if (domain != null) {
      setState(() {
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: TextField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'ناوی دۆمەینێک بنووسە'),
            onChanged: (val) {
              setState(() {
                domainname = val;
              });
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if (domainname != null) {
                getdata();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("تکایە ناوی دۆمێەینێک بنووسە",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700))));
              }
            },
            child: const Text('search')),
        Visibility(
          visible: isloaded,
          replacement: const Center(child: CircularProgressIndicator()),
          child: Text(
              '${domain?.domainInfo?.domainName}   ${domain?.domainInfo?.domainAvailability}  '),
        ),
      ],
    );
  }
}
