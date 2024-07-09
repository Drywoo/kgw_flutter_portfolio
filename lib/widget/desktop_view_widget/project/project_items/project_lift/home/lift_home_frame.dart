import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/introduce_form.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/home/lift_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_viewer_structure.dart';

class LiftHomeScreenFrame extends StatefulWidget {
  const LiftHomeScreenFrame({super.key});

  @override
  State<LiftHomeScreenFrame> createState() => _LiftHomeScreenFrameState();
}

class _LiftHomeScreenFrameState extends State<LiftHomeScreenFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 700,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: PreviewTextArea(
                        header: '프로토타입',
                        title: '내용을 보시려면 앱 내부요소를 클릭해주세요',
                        content: LiftHomeScreen(context),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: PreviewDetailsPanel(
                        title: 'LIFT',
                        detailsContent: Column(
                          children: [
                           IntroduceForm(
                              summary: '구직자와 회사 모두가 편한 서비스, LIFT',
                              projectPeriod: '2024.3 ~ 2024.7',
                              projectContent1: '플러터 프레임워크를 이용하여 만든 모의 채용 플랫폼입니다',
                              projectContent2: '최근 청년들의 낮은 취업률이 사회적 문제인 상황에서 기존 채용 플랫폼의 단점을 찾아보고 모의로 채용 플랫폼을 만들어보게 되었습니다',
                              projectContent3: '저희 팀은 AI를 통해 면접 질문을 제공하고 회사 담당자와 1대1 채팅을 할수있는 서비스를 개발하게 되었습니다.',
                              projectGitHub: 'https://github.com/DGSW-lift/lift-flutter',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
