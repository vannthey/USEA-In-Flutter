import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:usea_app/widget/CustomAppBar.dart';

class GuestEvent extends StatefulWidget {
  const GuestEvent({Key? key}) : super(key: key);

  @override
  State<GuestEvent> createState() => _GuestEventState();
}

class _GuestEventState extends State<GuestEvent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const CustomAppBar('Event'),
        body: Column(children: [
          ImageSlideshow(
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
        ]),
      ),
    );
  }
}
