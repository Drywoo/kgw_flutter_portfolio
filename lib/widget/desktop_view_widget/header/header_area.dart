  import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/util/divide_line.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        color: Color(0xff76BEE9),
        child: Column(
          children: [
            _titleText(),
            const SizedBox(height: 20),
            _introText(),
            const SizedBox(height: 20),
            line(),
          ],
        ),
      );
  }
}

Widget _titleText() {
    return const SizedBox(
        width: double.infinity,
        child: Text(
          "KGW's Portfolio",
        style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    ),
  );
}

 Widget _introText() {
    return const SizedBox(
      width: double.infinity,
      child: Text(
    '안녕하세요\n내일을 만들어나갈 개발자 김건우입니다',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal
    ),
    textAlign: TextAlign.center,
    )
    );
  }

