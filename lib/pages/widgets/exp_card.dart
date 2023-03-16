import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      height: 320,
      width: isPhone ? double.infinity : 300,
      child: Card(
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                isPhone ? CrossAxisAlignment.start : CrossAxisAlignment.center,
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
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.github),
                    label: const Text('Ver código no GitHub')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
