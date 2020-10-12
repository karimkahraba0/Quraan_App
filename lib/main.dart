import 'package:flutter/material.dart';
import 'package:quraan_app/screens/share_app.dart';

void main() {
  runApp(QuraanApp());
}

class QuraanApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShareApp(),
    );
  }
}
