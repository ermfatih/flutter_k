import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  Color _color=Colors.white;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: _color,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final result=await showModalBottomSheet(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true,
            context: context, builder: (context) {
            return CustomSheet();
          },);
          if(result is bool){
            setState(() {
              _color=Colors.white54;
            });
          }
        },
      ),
      body: Column(
        children: const[],
      ),
    );
  }
}

class CustomSheet extends StatefulWidget {
  const CustomSheet({Key? key,}) : super(key: key);

  @override
  State<CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<CustomSheet> {

  Color color=Colors.red;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Divider(thickness: 3,color: Colors.red,
              indent: MediaQuery.of(context).size.width*.45,
              endIndent: MediaQuery.of(context).size.width*.45,
            ),
            Text('asd'),
            Container(color: color,height: 200,width: 100,),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop<bool>(true);
                  setState(() {
                    color=Colors.black;
                  });
                }, child: Text('Okey'))
          ],
        ),
      ),
    );
  }
}
mixin ProductSheetMixin{
  Future<T?> showCustomSheet<T>(BuildContext context,Widget child)async{
    return showModalBottomSheet<T>(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      isScrollControlled: true,
      context: context, builder: (context) {
      return _CustomMainSheet(child: child,);
    },);
  }
}
class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final Color color=Colors.red;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BaseSheetHeader(),
            child
          ],
        ),
      ),
    );
  }
}

class BaseSheetHeader extends StatelessWidget {
  const BaseSheetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 3,color: Colors.red,
      indent: MediaQuery.of(context).size.width*.45,
      endIndent: MediaQuery.of(context).size.width*.45,
    );
  }
}