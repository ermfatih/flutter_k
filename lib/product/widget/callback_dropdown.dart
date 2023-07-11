import 'package:flutter/material.dart';
import 'package:flutter_k/303/call_back_learn.dart';

class CallBackDropDown extends StatefulWidget {
  const CallBackDropDown({Key? key, required this.onUserSelected}) : super(key: key);
  final void Function(CallBackUser user) onUserSelected;

  @override
  State<CallBackDropDown> createState() => _CallBackDropDownState();
}

class _CallBackDropDownState extends State<CallBackDropDown> {
  CallBackUser? _user;
  void _updateUser(CallBackUser? item){
    setState(() {
      _user=item;
    });
    if(_user!=null){
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser>(
      value: _user,
      items: CallBackUser.dummyUser().map((e) {
        return DropdownMenuItem(child: Text(e.name,style: Theme.of(context).textTheme.headline5), value: e,);}).toList(),
      onChanged: _updateUser
    );
  }
}
