import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text('모바일 뷰는 추후 지원할 예정입니다'),
             Text('화면 크기를 늘려주세요')
           ],
         ),
        
      )
    );
  }
}