import 'package:flutter/material.dart';
import 'package:flutter_k/product/widget/buttons/answer_button.dart';
import 'package:flutter_k/product/widget/buttons/loading_button.dart';
import 'package:flutter_k/product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(onUserSelected: (user) {

          },),
          AnswerButton(
            onNumber: (number) {
              return number %3 ==1;
            },
          ),
          LoadingButton(title: 'asd', onPressed: () async{
            await Future.delayed(Duration(seconds: 1));
          },)
        ],
      ),
    );
  }
}
class CallBackUser{
  final String name;
  final int id;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CallBackUser && runtimeType == other.runtimeType && name == other.name && id == other.id;
  @override
  int get hashCode => name.hashCode ^ id.hashCode;


  CallBackUser(this.name, this.id);
  // TODO: Dummy remove it
  static List<CallBackUser>dummyUser(){
    return [
      CallBackUser('fat', 1),
      CallBackUser('ali', 2)
    ];
  }
}
