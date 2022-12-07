import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:usea_app/guest/MainGuest.dart';
import 'package:usea_app/widget/CustomButton.dart';
import 'package:usea_app/widget/CustomColor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
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
            'សាកលវិទ្យាល័យ សៅស៍អ៊ីសថ៍អេយសៀ',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Khmer-muol-light',
              color: DarkBlue,
            ),
          ),
          const Text(
            'University Of South-East Asia',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Poppins-semibold',
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'គណនី',
            style: TextStyle(
                fontFamily: 'Battambang-bold',
                color: DarkBlue,
                fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          const Button('login', MainGuest())
        ],
      ),
    );
  }
}
