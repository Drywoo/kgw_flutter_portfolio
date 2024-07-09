import 'package:flutter/material.dart';

class PreviewTextArea extends StatelessWidget {
  final String title;
  final Widget content;
  final String header;

  const PreviewTextArea({
    super.key,
    required this.title,
    required this.content,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          header,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 10),
        Text(
          title
        ),
        SizedBox(height: 20),
        Expanded(
          child: content,
        ),
      ],
    );
  }
}

class PreviewDetailsPanel extends StatelessWidget {
  final String title;
  final Widget detailsContent;

  const PreviewDetailsPanel({
    Key? key,
    required this.title,
    required this.detailsContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: detailsContent,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



