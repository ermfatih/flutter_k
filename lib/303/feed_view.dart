import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}
//şimdi burda tekrar tekrar istek atacak sayfayı her açtığında bu olmasın istiyorsak
//with AutomaticKeepAliveClientMixin
//super.build(context);
//  @override
//   bool get wantKeepAlive => true;
//bunları yaptıktan sonra future builder bi defa çalışır tekrar tekrar istek atmaz
//fakat setState gibi ekran güncellersen yine istek atar
//bu da olmasın diyosan init state içinde future u belirle ve future yi aşşagıda yazma fonksiyon olarak yaz
class _FeedViewState extends State<FeedView> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
     //future: .........,
      builder: (context, snapshot) {
        switch(snapshot.connectionState){
          case ConnectionState.none:
            return const Placeholder();
          case ConnectionState.waiting:

          case ConnectionState.active:
            return const Center(child: CircularProgressIndicator(),);
          case ConnectionState.done:
            if(snapshot.hasData){
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile();
              },);
            }
            else{
              return Placeholder();
            }
        }
        },);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

