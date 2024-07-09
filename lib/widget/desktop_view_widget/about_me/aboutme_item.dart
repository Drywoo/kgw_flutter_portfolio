import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutMeItem extends StatelessWidget {
  final IconData iconName;
  final String text;
  
  const AboutMeItem({
  super.key, 
  required this.iconName,
  required this.text
  }
);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconName),
        const SizedBox(height: 10),
        Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight:FontWeight.normal,
        ),
        ),
      ],
    );
  }
}


