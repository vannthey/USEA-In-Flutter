import 'package:flutter/material.dart';

class GuestMore extends StatefulWidget {
  const GuestMore({Key? key}) : super(key: key);

  @override
  State<GuestMore> createState() => _GuestMoreState();
}

class _GuestMoreState extends State<GuestMore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Text('More'),
      )),
    );
  }
}
