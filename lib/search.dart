import 'package:flutter/material.dart';
import 'remote_services.dart';
import 'domain.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
Post? domain;
  var isloaded = false;

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    domain = await RemoteServices.getdomain();

    if (domain != null) {
      setState(() {
        print('lllllllllllllllllllllllllllllllllllllllllll');
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isloaded,
      child: Text('${domain?.id.toString()}'),
      replacement: const Center(child: CircularProgressIndicator()),
    );
  }
}
