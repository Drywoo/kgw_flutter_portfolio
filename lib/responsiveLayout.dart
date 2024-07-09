import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  static const int _maxWidth = 1000;
  final Widget desktopView;
  final Widget mobileView;

  const ResponsiveLayout({super.key, required this.desktopView, required this.mobileView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if( constraints.maxWidth < _maxWidth) {
        return mobileView;
      } else { 
        return desktopView;
      }
    });
  }
}