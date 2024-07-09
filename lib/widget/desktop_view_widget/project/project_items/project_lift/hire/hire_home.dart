import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home.dart';

class CustomAppBar extends StatelessWidget {
  final title;
  IconButton? rightIconButton;

  CustomAppBar({Key? key, this.title, this.rightIconButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class HireCompany {
  final String id;
  final String name;
  final String location;
  final String experience;
  final String imageUrl;

  HireCompany({
    required this.id,
    required this.name,
    required this.location,
    required this.experience,
    required this.imageUrl,
  });
}

Widget LiftHireScreen(BuildContext context) {
  final List<HireCompany> dummyData = List.generate(
    20,
    (index) => HireCompany(
      id: 'id_$index',
      name: '플러터 개발자(신입)',
      location: '$index번째 회사',
      experience: '경력: 신입~3년',
      imageUrl: 'assets/images/hire_Img.jpg', // 로컬 이미지 경로
    ),
  );

  return Column(
    children: [
      Expanded(
        child: SizedBox(
          width: 400,
          height: 400,
          child: DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            screen: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Container(
                  padding: const EdgeInsets.only(left: 26, right: 26),
                  child: Column(
                    children: [
                      CustomAppBar(title: 'LIFT',rightIconButton: IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.black,))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(onPressed: () {
                              onAlertPressed(context);
                            }, child: Text('지역')),
                            ElevatedButton(onPressed: () {
                              onAlertPressed(context);
                            }, child: Text('경력')),
                            ElevatedButton(onPressed: () {
                              onAlertPressed(context);
                            }, child: Text('스택')),
                          ],
                        ),
                      ),
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            // Add logic for refresh if needed
                            // For dummy data, no refresh logic is needed
                          },
                          child: GridView.builder(
                            padding: const EdgeInsets.all(10),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2,
                              childAspectRatio: 0.7, // 여기서 비율을 조정하여 높이를 늘립니다.
                            ),
                            itemCount: dummyData.length,
                            itemBuilder: (context, index) {
                              final item = dummyData[index];
                              return GestureDetector(
                                onTap: () {
                                  // Dummy data doesn't require navigation to detail view.
                                  print('Tapped on ${item.name}');
                                },
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(item.imageUrl, fit: BoxFit.cover),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          item.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(item.location),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(item.experience),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

