import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({Key? key, required this.title, required this.onPressed,}) : super(key: key);
  final String title;
  final Future<void> Function() onPressed;

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool isLoading=false;
  void changeLoading(){
    setState(() {
      isLoading=!isLoading;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () async{
      if(isLoading) return;
      changeLoading();
      await widget.onPressed.call();
      changeLoading();
    }, child:isLoading ?CircularProgressIndicator(): Text(widget.title));
  }
}
