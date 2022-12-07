import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:usea_app/widget/CustomColor.dart';

import '../../widget/ConstTextStyle.dart';

class StudentStudyPlan extends StatefulWidget {
  const StudentStudyPlan({super.key});

  @override
  State<StudentStudyPlan> createState() => _StudentStudyPlanState();
}

class _StudentStudyPlanState extends State<StudentStudyPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_rounded),color: DarkBlue,),
    title: Text(
      'ផែនការសិក្សា',
      style: titleAppbar,
    ),
      ),
    );
  }
}
