import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result= await showDialog(
            barrierDismissible: true,//etrafa dokunulduğunda sayfadan çıkmasın
            useSafeArea: false,
            context: context, builder: (context) {
            return _ImageZoomDialog();
          },);
        },
      ),
      appBar: AppBar(),
    );
  }
}
class UpdateDialog extends AlertDialog{
  UpdateDialog({Key? key,required BuildContext context}) : super(key: key,
    title: Text('Update'),
    actions: [ElevatedButton(onPressed: () {
      Navigator.pop(context,true);
    }, child: Text('Update'))],
  );
}
class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(//zoom yapıyo
          child: Image.network('https://picsum.photos/200',height: 400,fit: BoxFit.cover,)),
    );
  }
}

