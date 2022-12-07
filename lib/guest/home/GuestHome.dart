import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:usea_app/guest/Event/GuestEvent.dart';
import 'package:usea_app/student/MainStudent.dart';
import 'package:usea_app/widget/CategoryItem.dart';
import 'package:usea_app/widget/CustomColor.dart';

class GuestHome extends StatefulWidget {
  const GuestHome({Key? key}) : super(key: key);

  @override
  State<GuestHome> createState() => _GuestHomeState();
}

class _GuestHomeState extends State<GuestHome> {
  List<String> Category = [
    'ព្រឹត្តិការណ៍',
    'ការចុះឈ្មោះ',
    'កម្មវិធីសិក្សា',
    'អាហារូបករណ៍',
    'ព័ត៌មានការងារ',
    'គណនីនិស្សិត'
  ];

  List img = [
    Image.asset('assets/images/guest/news_icon.png'),
    Image.asset('assets/images/guest/registration_icon.png'),
    Image.asset('assets/images/guest/program_icon.png'),
    Image.asset('assets/images/guest/scholarship_icon.png'),
    Image.asset('assets/images/guest/career_icon.png'),
    Image.asset('assets/images/guest/student_icon.png')
  ];

  void tapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GuestEvent(),
          ),
        );
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StudentHome(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/usea_logo.png',
                          width: 50,
                        ),
                        Column(
                          children: const [
                            Text(
                              'សាកលវិទ្យាល័យ សៅស៍អ៊ីសថ៍អេយសៀ',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Khmer-muol-light',
                                color: DarkBlue,
                              ),
                            ),
                            Text(
                              'University Of South-East Asia',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Poppins-semibold',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.notifications_active_rounded,
                          color: DarkBlue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ImageSlideshow(
                  children: [
                    Image.asset(
                      'assets/images/slide/students.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/slide/a.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/slide/b.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/slide/f.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: GridView.builder(
                    itemCount: Category.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () => tapped(index),
                          child: CategoryItem(
                              index: index, icon: img, title: Category),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
