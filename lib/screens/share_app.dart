import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF49090B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey.shade400),
        title: Text('مشاركة التطبيق',
            style: TextStyle(fontSize: 25, color: Colors.grey.shade400)),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.height * 0.04),
          Image.asset('images/logo.png',
              color: Colors.yellow.shade800, height: mediaQuery.height * 0.3),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.03,
                vertical: mediaQuery.height * 0.04),
            child: Text(
              'تطبيق القرآن الكريم متاح أيضًا كمصدر مفتوح على جيتهاب !',
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 25),
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.03),
          GestureDetector(
            onTap: () {
              launch("https://github.com/m-hamzashakeel/The_Holy_Quran_App");
            },
            child: Container(
              color: Colors.grey.shade800,
              height: mediaQuery.height * 0.08,
              width: mediaQuery.width * 0.84,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.github,
                      color: Colors.white, size: 35),
                  SizedBox(width: mediaQuery.width * 0.02),
                  Text(
                    'علي جيتهاب',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.03),
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Color(0xff4e8f8b),
              height: mediaQuery.height * 0.08,
              width: mediaQuery.width * 0.84,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.share, color: Colors.white, size: 35),
                  SizedBox(width: mediaQuery.width * 0.02),
                  Text(
                    'مشاركة التطبيق',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
