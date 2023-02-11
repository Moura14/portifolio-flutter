import 'package:flutter/material.dart';

class ExpCard extends StatelessWidget {
  //ExpCard({super.key});

  final IconData icon;
  final String title;
  final String description;

  const ExpCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrants) {
      return constrants.maxWidth < 700
          ? Container(
              width: 600,
              padding: const EdgeInsets.all(20),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(icon, size: 30),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 30,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        description,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            )
          : Container(
              width: 500,
              padding: const EdgeInsets.all(20),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(icon, size: 30),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 30,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        description,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            );
    });
  }
}
