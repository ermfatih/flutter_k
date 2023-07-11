part of './part_of_learn.dart';

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('asd'),
      actions: [
        ElevatedButton(onPressed: () {

        }, child: Text('asd'))
      ],
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}