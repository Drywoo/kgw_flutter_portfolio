import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/about_me/aboutme_area.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_area.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/util/divide_line.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/header/header_area.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/skills/skills_area.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/way_of_working/way_of_working_area.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const header(),
            const AboutMeArea(),
            way_of_working(),
            line(),
            skills(),
            projectArea(),
            line(),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}



