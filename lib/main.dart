import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  //convert hex color to flutter color
  // int colorHex(String color) {
  //   String hex = '0xff' + color;
  //   hex.replaceAll('#', '');
  //   int finalColor = int.parse(hex);
  //   return finalColor;
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/usea_logo.png',
            width: 170,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'សាកលវិទ្យាល័យ សៅស៍អ៊ីសថ៍អេយសៀ',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Khmer-moul',
              color: Color(0xff0B0C7F),
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
                color: Color(0xff0B0C7F),
                fontSize: 22),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              maximumSize: const Size(200, 50),
              backgroundColor: const Color(0xff0B0C7F),
              shape: const StadiumBorder()
            ),
            onPressed: () {},
            child: const Center(
              child: Text(
                "គណនីភ្ញៀវ",
                style: TextStyle(fontFamily: 'Battambang-bold', fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                maximumSize: const Size(200, 50),
                backgroundColor: const Color(0xff0B0C7F),
                shape: const StadiumBorder()
            ),
            onPressed: () {},
            child: const Center(
              child: Text(
                "គណនីនិស្សិត",
                style: TextStyle(fontFamily: 'Battambang-bold', fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
