import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget hdpi;
  final Widget xhdpi;

  const ResponsiveWidget(this.hdpi, this.xhdpi, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 768) {
        return hdpi;
      } else {
        return xhdpi;
      }
    });
  }
}
