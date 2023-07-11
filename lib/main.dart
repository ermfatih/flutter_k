import 'package:flutter/material.dart';
import 'package:flutter_k/303/call_back_learn.dart';
import 'package:flutter_k/303/part/part_of_learn.dart';
import 'package:flutter_k/303/feed_view.dart';
import 'package:flutter_k/303/regrest_source/view/reqres_view.dart';
import 'package:flutter_k/alert_learn.dart';
import 'package:flutter_k/sheet_learn.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ReqResView(),
    );
  }
}

