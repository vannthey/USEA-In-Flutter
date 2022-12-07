import 'package:flutter/material.dart';
import 'package:usea_app/student/home/StudentHome.dart';
import 'package:usea_app/student/news/StudentNews.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({Key? key}) : super(key: key);

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  int navigateSelected = 0;

  List navigateOption = [const MainStudent(), const StudentNews()];

  void onItemSelect(int index) {
    setState(() {
      navigateSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: navigateOption.elementAt(navigateSelected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ទំព័រដើម'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'ព័ត៌មានថ្មីៗ')
        ],
        currentIndex: navigateSelected,
        onTap: onItemSelect,
        selectedItemColor: const Color(0xff0B0C7F),
        selectedLabelStyle:
            const TextStyle(fontFamily: 'Battambang-regular', fontSize: 16),
      ),
    );
  }
}
