import 'package:flutter/material.dart';

class SkillsItem extends StatelessWidget {
  final String skillText;
  final String imagePath;
  final String description1;
  final String description2;
  final String skillProficiency;

  const SkillsItem({
  super.key, 
  required this.skillText, 
  required this.imagePath,
  required this.description1,
  required this.description2, required this.skillProficiency});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(skillText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Image.asset(imagePath, width: 90, height: 90),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              Text(description1,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              const SizedBox(height: 20),
              Text(description2,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              const SizedBox(height: 50),
            ]),
          ),
        ],
      ),
    );
  }
}
