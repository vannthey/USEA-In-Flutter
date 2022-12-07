import 'package:flutter/material.dart';
import 'package:usea_app/widget/ConstTextStyle.dart';
import 'package:usea_app/widget/CustomColor.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text('ប្រវត្តិរូប'),
      titleTextStyle: titleAppbar,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        color: DarkBlue,
      )
      ),
      body: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const CircleAvatar(
                backgroundImage: AssetImage('assets/images/programmer.jpg'),
                maxRadius: 50),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ថង វ៉ាន់ថី',
                  style: BTB20,
                ),
                Text(
                  'BSR130154',
                  style: BTB20,
                ),
              ],
            )
          ],
        ),
      )
    ],
      ),
    );
  }
}
