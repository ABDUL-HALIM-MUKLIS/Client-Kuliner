import 'package:flutter/material.dart';
// import 'package:flutter_client_kuliner/module/base/base_home_view.dart';
import 'package:flutter_client_kuliner/module/base/base_home_view.dart';

void main() {
  runApp(const KulinerApp());
}
class KulinerApp extends StatelessWidget {
  const KulinerApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuliner Siduarjo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BaseHomeView(),
    );
  }
}