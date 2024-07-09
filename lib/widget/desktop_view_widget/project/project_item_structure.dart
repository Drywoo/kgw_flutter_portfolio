import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectItem extends StatelessWidget {
  final String projectName;
  final String imagePath;
  final String description1;
  final String description2;
  final String useSkill;
  final String bannerText;
  final Color bannerColor;

  const ProjectItem({
    Key? key,
    required this.projectName, 
    required this.imagePath,
    required this.description1,
    required this.description2,
    required this.useSkill,  
    required this.bannerText,
    required this.bannerColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBannerContainer(
      bannerText: bannerText,
      bannerColor: bannerColor,
      child: Container(
        width: 250,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              projectName,
              style: const TextStyle(
                fontSize: 25, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'BM_Jua'
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                imagePath,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text('사용 스택'),
            SizedBox(height: 5),
            Text(
              useSkill,
              style: const TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'BM_Jua'
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    description1,
                    style: const TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.normal, 
                      fontFamily: 'BM_Jua'
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    description2,
                    style: const TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.normal, 
                      fontFamily: 'BM_Jua'
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBannerContainer extends StatelessWidget {
  final Widget child;
  final String bannerText;
  final Color bannerColor;

  CustomBannerContainer({
    required this.child,
    required this.bannerText,
    required this.bannerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: 0,
          child: CustomPaint(
            painter: BannerPainter(color: bannerColor),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              color: bannerColor,
              child: Text(
                bannerText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BannerPainter extends CustomPainter {
  final Color color;

  BannerPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width - 10, 10)
      ..lineTo(10, 10)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
