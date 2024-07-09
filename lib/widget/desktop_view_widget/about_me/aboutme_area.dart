  import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/custom_icons_icons.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/about_me/aboutme_item.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/util/divide_line.dart';

class AboutMeArea extends StatelessWidget {
  const AboutMeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: double.infinity,
    child: Column(
      children: [
        const Text(
        'About Me',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: IntrinsicWidth(child: _aboutMeName())),
            Expanded(child: IntrinsicWidth(child: _aboutMeEmail())), 
            Expanded(child: IntrinsicWidth(child: _aboutMeTel())),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: IntrinsicWidth(child: _aboutMeInstagram())),
            Expanded(child: IntrinsicWidth(child: _aboutMeGithub())),
            Expanded(child: IntrinsicWidth(child: _aboutMeEducation())),
          ],
        ),
        const SizedBox(height: 20),
        line(),
      ],
    ),
  );
  }
}

 Widget _aboutMeEmail() {
    return const AboutMeItem(iconName: Icons.email , text: 'kgw060220@gmail.com');
  }
  
  Widget _aboutMeInstagram() {
    return const Column(
      children: [
        Icon(Custom_Icons.iconmonstr_instagram_14),
        SizedBox(height: 10),
        Text('@geonwo_o06',style: TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget _aboutMeGithub() {
     return const Column(
      children: [
        Icon(Custom_Icons.iconmonstr_github_1),
        SizedBox(height: 10),
        Text('@Drywoo',style: TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget _aboutMeName() {
    return const AboutMeItem(iconName: Icons.person , text: '김건우');
  }

  Widget _aboutMeTel() {
    return const AboutMeItem(iconName: Icons.call, text: '010-6498-9888');
  }

  Widget _aboutMeEducation() {
    return const AboutMeItem(iconName: Icons.school , text: '대구소프트웨어마이스터고등학교 재학중');
  }