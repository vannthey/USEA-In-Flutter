import 'package:flutter/material.dart';
import 'package:usea_app/guest/MainGuest.dart';


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
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: const Size.fromWidth(220),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainGuest(),),);
                  },
                  child: ListTile(
                    title: const Text(
                      "លេខទូរស័ព្ទ",
                      style: TextStyle(
                          fontFamily: 'Battambang-bold',
                          fontSize: 16,
                          color: Color(0xff0B0C7F)),
                    ),
                    leading: Image.asset('assets/images/phone_auth_icon.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: const Size.fromWidth(220),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: ListTile(
                    title: const Text(
                      "គណនី Google",
                      style: TextStyle(
                          fontFamily: 'Battambang-bold',
                          fontSize: 16,
                          color: Color(0xff0B0C7F)),
                    ),
                    leading: Image.asset('assets/images/google_auth_icon.png'),
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
