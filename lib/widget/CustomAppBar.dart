import 'package:flutter/material.dart';
import 'package:usea_app/widget/CustomColor.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar(this.title, {super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  TextStyle style = const TextStyle(
      fontFamily: 'Battambang-regular', fontSize: 16, color: DarkBlue);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(widget.title, style: style),
      centerTitle: true,
    );
  }
}
