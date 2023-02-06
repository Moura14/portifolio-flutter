import 'package:flutter/material.dart';

class ExpCard extends StatelessWidget {
  //ExpCard({super.key});

  final String title;
  final String desription;
  final String subtitle;

  const ExpCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.desription});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.grey[50],
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                desription,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ));
  }
}
