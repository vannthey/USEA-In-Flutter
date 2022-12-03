import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  int index;
  List icon;
  List title;

  CategoryItem({
    super.key,
    required this.index,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //images
          icon[index],
          Text(
            title[index],
            style: const TextStyle(fontFamily: 'Battambang-regular',fontSize: 16),
          )
        ],
      ),
    );
  }
}
