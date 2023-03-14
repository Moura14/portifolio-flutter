import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ExpCard extends StatelessWidget {
  //ExpCard({super.key});

  const ExpCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.time,
      required this.descrition});

  final IconData icon;
  final String title;
  final String time;
  final String descrition;

  @override
  Widget build(BuildContext context) {
    final isPhone = ResponsiveWrapper.of(context).isMobile;
    return SizedBox(
      width: isPhone ? double.infinity : 250,
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
              Text(time, style: const TextStyle(fontSize: 15)),
              const SizedBox(
                height: 16,
              ),
              Text(
                descrition,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
