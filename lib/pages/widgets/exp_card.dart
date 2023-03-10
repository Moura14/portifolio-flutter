import 'package:flutter/material.dart';

class ExpCard extends StatelessWidget {
  //ExpCard({super.key});

  const ExpCard(
      {super.key, required this.icon, required this.title, required this.time});

  final IconData icon;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Card(
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(
                icon,
                size: 32,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(time, style: const TextStyle(fontSize: 15))
            ],
          ),
        ),
      ),
    );
  }
}
