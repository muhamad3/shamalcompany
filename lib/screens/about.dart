import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'img/logo.png',
                width: 100,
                height: 100,
                alignment: Alignment.topLeft,
              ),
              Column(
                children: const [
                  Text('کۆمپانیای شەماڵی کوردستان',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                  Text('''بۆ بازرگانی گشتی و خزمەتگوزاری ئایتی
                       و تەکنەلۆجیای زانیاری /سنوردار''',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('0770 046 2525 - 0750 046 2525',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.grey[200],
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(
              children: const [
                Text('دەربارەی ئێمە',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                Text('''
کۆمپانیای شەماڵی کوردستان کۆمپانیایەکی فەرمی ڕێپێدراوی یاساییە کە کار لەسەر جی پی ئێس دەکات و خاوەنی بریکارنامەی کۆمپانیای جیهانی (سینۆتراک)ــە لە کوردستان و عێراقدا کە چەندین جۆری جیاوازی جی پی ئێس بە چەندین تایبەتمەندی و جۆری جیاواز پێشکەش دەکات و خاوەن ئەپ و پلاتفۆڕمی تایبەتی خۆیەتی و خزمەتگوزاریەکانی بێبەرامبەر پێشکەش بە بەکارهێنەرانی دەکات و خاوەن ستافێکی شارەزا و بە ئەزموونی بوارەکەن و سێرڤسی بێبەرامبەر پێشکەش دەکەن''',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Text('کارمەندەکانمان',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.grey[200],
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Image.asset(
                    'img/avatar.png',
                  ),
                ),
                const Text('زانا هیجرانی',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                const Text('CEO & CTO & Founder',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Text('شارەزای بواری جی پی ئێس',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Text('info@shamali.krd',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: double.infinity,
            color: Colors.grey[200],
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Image.asset(
                    'img/avatar.png',
                  ),
                ),
                const Text('موحەممەد جەزا',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                const Text('Graphic Designer & Sale Manager & Web Designer',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Text('خاوەن بڕوانامەی بەکالۆریۆس لە زانستی کۆمپیوتەر',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Text('mohammed@shamali.krd',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: double.infinity,
            color: Colors.grey[200],
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Image.asset(
                    'img/avatar.png',
                  ),
                ),
                const Text('توانا ئیبراهیم',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                const Text('سەرپەرشتیاری کۆگا',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Text('خاوەن بڕوانامەی دیبلۆم پەیمانگای مامۆستایان',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Text('.....',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  iconSize: 40,
                  padding: const EdgeInsets.all(20),
                  onPressed: () => _launchURL(
                      "https://m.facebook.com/shamali.kurdistan/?refsrc=deprecated&_rdr"),
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blueAccent,
                  )),
              IconButton(
                  iconSize: 40,
                  padding: const EdgeInsets.all(20),
                  onPressed: () => _launchURL("https://wa.me/9647700462525"),
                  icon: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.greenAccent,
                  )),
              IconButton(
                  iconSize: 40,
                  padding: const EdgeInsets.all(20),
                  onPressed: () => _launchURL("tel://07700462525"),
                  icon: const FaIcon(
                    FontAwesomeIcons.phone,
                    color: Colors.blueAccent,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await launchUrlString(url)) throw 'Could not launch';
  }
}
