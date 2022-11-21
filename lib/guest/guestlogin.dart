import 'package:flutter/material.dart';

void main() {
  runApp(const GuestLogin());
}

class GuestLogin extends StatefulWidget {
  const GuestLogin({Key? key}) : super(key: key);

  @override
  State<GuestLogin> createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
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
                  'ចូលតាមរយៈ',
                  style: TextStyle(
                      fontFamily: 'Battambang-bold',
                      color: Color(0xff0B0C7F),
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      maximumSize: const Size(200, 50),
                      backgroundColor: const Color(0xff0B0C7F),
                      shape: const StadiumBorder()),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "លេខទូរស័ព្ទ",
                      style: TextStyle(
                          fontFamily: 'Battambang-bold', fontSize: 18),
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
                      shape: const StadiumBorder()),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "គណនី Google",
                      style: TextStyle(
                          fontFamily: 'Battambang-bold', fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
