import 'package:flutter/material.dart';
import 'package:usea_app/widget/ConstTextStyle.dart';

class StudentNews extends StatefulWidget {
  const StudentNews({super.key});

  @override
  State<StudentNews> createState() => _StudentNewsState();
}

class _StudentNewsState extends State<StudentNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'ព័ត៌មានថ្មី',
          style: titleAppbar,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Text('Student news'),
    ));
  }
}
