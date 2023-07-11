import 'package:flutter/material.dart';
part 'part_app_bar.dart';

//part of bu dosya çok büyüdüğünde öbür sayfaya taşımamızı sağlar importlar ilk sayfada kalır
class PartOfLearn extends StatefulWidget {
  const PartOfLearn({Key? key}) : super(key: key);

  @override
  State<PartOfLearn> createState() => _PartOfLearnState();
}

class _PartOfLearnState extends State<PartOfLearn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _CustomAppBar(),
    );
  }
}


