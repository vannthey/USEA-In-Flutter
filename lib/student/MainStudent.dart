import 'package:flutter/material.dart';
import 'package:usea_app/guest/MainGuest.dart';
import 'package:usea_app/guest/home/GuestHome.dart';
import 'package:usea_app/widget/CategoryItem.dart';

class MainStudent extends StatefulWidget {
  const MainStudent({Key? key}) : super(key: key);

  @override
  State<MainStudent> createState() => _MainStudentState();
}

class _MainStudentState extends State<MainStudent> {
  TextStyle styleResult =
      const TextStyle(fontFamily: 'Poppins-semibold', fontSize: 14);
  TextStyle styleLabel =
      const TextStyle(fontSize: 14, fontFamily: 'Poppins-regular');
  List rankCredit = ['Rank', 'Total Credit'];
  List rankCreditResult = ['#1', '114'];
  List image = [
    Image.asset('assets/images/student/rank_icon.png'),
    Image.asset('assets/images/student/credit_icon.png')
  ];

  List img = [
    Image.asset('assets/images/student/schedule_icon.png'),
    Image.asset('assets/images/student/studyplan_icon.png'),
    Image.asset('assets/images/student/attendance_icon.png'),
    Image.asset('assets/images/student/feedback_icon.png'),
    Image.asset('assets/images/student/score_icon.png'),
    Image.asset('assets/images/student/guest_icon.png'),
  ];

  List title = [
    'កាលវិភាគ',
    'ផែនការសិក្សា',
    'វត្តមាន',
    'មតិកែលម្អ',
    'ពិន្ទុ',
    'គណនីភ្ញៀវ'
  ];

  void tapped(int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        print(2);
        break;
      case 2:
        print(3);
        break;
      case 3:
        print(4);
        break;
      case 4:
        print(5);
        break;
      case 5:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MainGuest(),));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "សួស្តី!",
                          style: TextStyle(
                              fontFamily: 'Battambang-regular', fontSize: 18),
                        ),
                        Text(
                          "ថង វ៉ាន់ថី",
                          style: TextStyle(
                            fontFamily: 'Battambang-bold',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      maxRadius: 35,
                      backgroundImage:
                          AssetImage("assets/images/usea_logo.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  flex: 1,
                  child: GridView.builder(
                    itemCount: rankCredit.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200, mainAxisExtent: 70),
                    itemBuilder: (context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              image[index],
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      rankCreditResult[index],
                                      style: styleResult,
                                    ),
                                    Text(
                                      rankCredit[index],
                                      style: styleLabel,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                Flexible(
                    flex: 6,
                    child: GridView.builder(
                        itemCount: title.length,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200, mainAxisExtent: 100),
                        itemBuilder: (context, int index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => tapped(index),
                              child: CategoryItem(
                                  index: index, icon: img, title: title),
                            ),
                          );
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
