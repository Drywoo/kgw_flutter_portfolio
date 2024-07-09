import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/introduce_form.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_ReEd/home/ReEd_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/home/lift_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_viewer_structure.dart';

class ReEdHomeScreenFrame extends StatefulWidget {
  const ReEdHomeScreenFrame({super.key});

  @override
  State<ReEdHomeScreenFrame> createState() => _ReEdHomeScreenFrameState();
}

class _ReEdHomeScreenFrameState extends State<ReEdHomeScreenFrame> {
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
                        content: ReEdHomeScreen(context),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: PreviewDetailsPanel(
                        title: 'ReEd',
                        detailsContent: Column(
                          children: [
                           IntroduceForm(
                              summary: '학생과 학원을 이어주는 서비스 ReEd입니다',
                              projectPeriod: '2023.3 ~ 2023.11',
                              projectContent1: 'ReEd는 학생과 선생님들이 모두 편리할수있는 출결관리서비스입니다',
                              projectContent2: '대부분의 학원들이 수기로 출석을 진행합니다 이러한 방식은 학생의 출석이 제대로 파악되지않는 문제가 생길수있습니다',
                              projectContent3: '저희 팀은 그 부분을 QR코드와 NFC로 해결해보고자 이 서비스를 만들게 되었습니다',
                              projectGitHub: 'https://github.com/workstride/ReEd_iOS',
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
