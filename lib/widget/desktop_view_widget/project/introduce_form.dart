import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/responsiveLayout.dart';
import 'package:kgw_flutter_portfolio/screens/desktop_view.dart';
import 'package:kgw_flutter_portfolio/screens/mobile_view.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroduceForm extends StatelessWidget {
  final String summary;
  final String projectPeriod;
  final String projectContent1;
  final String projectContent2;
  final String projectContent3;
  final String projectGitHub;

  const IntroduceForm({
    super.key, 
    required this.summary,
    required this.projectPeriod, 
    required this.projectContent1, 
    required this.projectContent2,
    required this.projectContent3,  
    required this.projectGitHub,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('개요',style: Theme.of(context).textTheme.headlineMedium),
        Text(summary,style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 20),
        Text('기간',style: Theme.of(context).textTheme.headlineMedium),
        Text(projectPeriod, style:Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 20),
        Text(projectContent1, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 10),
        Text(projectContent2, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 10),
        Text(projectContent3, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 20),
        Divider(),
        Text('바로가기',style: Theme.of(context).textTheme.headlineMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                launchUrl(
              Uri.parse(projectGitHub));
              },
              child: Image.asset('assets/images/github-logo.png',width: 40,height: 40),
            )
          ],
        ),
        SizedBox(height: 30),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/');
              },
              child: const Text(
                "돌아가기",
                style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold, fontFamily: 'BM_Jua'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
