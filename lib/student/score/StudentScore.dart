import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/ConstTextStyle.dart';
import '../../widget/CustomColor.dart';

class StudentScore extends StatefulWidget {
  const StudentScore({super.key});

  @override
  State<StudentScore> createState() => _StudentScoreState();
}

class _StudentScoreState extends State<StudentScore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: DarkBlue,
        ),
        title: Text(
          'ពិន្ទុនិស្សិត',
          style: titleAppbar,
        ),
      ),
    ));
  }
}
