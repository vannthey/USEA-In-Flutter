
import 'package:flutter/material.dart';
class GuestEvent extends StatefulWidget {
  const GuestEvent({Key? key}) : super(key: key);

  @override
  State<GuestEvent> createState() => _GuestEventState();
}

class _GuestEventState extends State<GuestEvent> {
  @override
  Widget build(BuildContext context) {
  return const SafeArea(child: Scaffold(body: Text('Hello'), ),);
  }
}
