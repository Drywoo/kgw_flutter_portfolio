import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/introduce_form.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_viewer_structure.dart';


class CacheHomeScreenFrame extends StatefulWidget {
  const CacheHomeScreenFrame({super.key});

  @override
  State<CacheHomeScreenFrame> createState() => _CacheHomeScreenFrameState();
}

class _CacheHomeScreenFrameState extends State<CacheHomeScreenFrame> {
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
                        title: '내용을 보시려면 앱 내부를 클릭해주세요',
                        content: cacheHomeScreen(context),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: PreviewDetailsPanel(
                        title: 'Cache',
                        detailsContent: Column(
                          children: [
                            IntroduceForm(
                              summary: '바쁜 현대인들을 위한 식사 고민 해결 어플리케이션',
                              projectPeriod: '2024.3 ~ 2024.6',
                              projectContent1: '플러터 프레임워크를 이용하여 만든 식사 메뉴 추천 어플리케이션입니다',
                              projectContent2: '최근 현대인들의 식습관이 무너지고 있다는 사실을 알게 되었고, 시중에 있는 어플리케이션 대부분이 단순히 음식을 추천해줄 뿐, 영양정보를 고려하지 않는다는 점을 발견했습니다.',
                              projectContent3: '저희 팀은 이러한 문제를 분석하여, AI를 통해 칼로리 및 영양정보를 추가로 제공하는 서비스를 개발하게 되었습니다.',
                              projectGitHub: 'https://github.com/pineapple-cache/cache_flutter',
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
