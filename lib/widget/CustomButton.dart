import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String title;
  final Widget destination;


  const Button(this.title, this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            maximumSize: const Size(200, 50),
            backgroundColor: const Color(0xff0B0C7F),
            shape: const StadiumBorder()),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontFamily: 'Battambang-bold', fontSize: 18),
          ),
        ),
      ),
    );
  }
}
