import 'package:flutter/material.dart';
import 'package:usea_app/student/home/StudentHome.dart';
import 'package:usea_app/student/MainStudent.dart';
import 'package:usea_app/widget/CustomButton.dart';
import 'package:usea_app/widget/CustomEditText.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({Key? key}) : super(key: key);

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

const TextStyle style = TextStyle(fontFamily: 'Battambang-bold');
const TextStyle style_regular =
    TextStyle(fontFamily: 'Battambang-regular', fontSize: 16);

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          title: const Text(
            'គណនីនិស្សិត',
            style: style,
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff0B0C7F)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/usea_logo.png',
              width: 170,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'សូមស្វាគមន៍មកកាន់',
              style: TextStyle(fontSize: 24, fontFamily: 'Battambang-regular'),
            ),
            const Text(
              'សាកលវិទ្យាល័យ សៅស៍អ៊ីសថ៍អេយសៀ',
              style: TextStyle(fontSize: 24, fontFamily: 'Battambang-regular'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'អត្តលេខនិស្សិត',
                    style: style_regular,
                  ),
                  EditText('បញ្ចូលអត្តលេខ'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'លេខសម្ងាត់និស្សិត',
                    style: style_regular,
                  ),
                  EditText('បញ្ចូលលេខសម្ងាត់'),
                ],
              ),
            ),

            const Button('ចូល', StudentHome())
          ],
        ),
      ),
    );
  }
}
