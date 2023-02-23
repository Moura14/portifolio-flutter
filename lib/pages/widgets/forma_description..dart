import 'package:flutter/material.dart';

class FormaDescription extends StatelessWidget {
  const FormaDescription(
      {super.key, required this.description, required this.title});

  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 42,
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              leading: const Icon(Icons.search),
              title: Text(title),
            )
          ],
        )
      ],
    );
  }
}
