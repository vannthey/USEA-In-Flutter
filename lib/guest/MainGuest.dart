import 'package:flutter/material.dart';
import 'package:usea_app/guest/home/guestHome.dart';
import 'more/GuestMore.dart';

class MainGuest extends StatefulWidget {
  const MainGuest({Key? key}) : super(key: key);

  @override
  State<MainGuest> createState() => _MainGuestState();
}

class _MainGuestState extends State<MainGuest> {
  List selectOptionNav = [const GuestHome(),const GuestMore()];

  int navigateSelected = 0;

  void onItemSelected(int index) {
    setState(() {
      navigateSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: selectOptionNav.elementAt(navigateSelected),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ទំព័រដើម',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), label: 'បន្ថែម'),
        ],
        currentIndex: navigateSelected,
        selectedItemColor: const Color(0xff0B0C7F),
        selectedLabelStyle:
        const TextStyle(fontFamily: 'Battambang-regular',fontSize: 16),
        onTap: onItemSelected,
      ),
    );
  }
}
