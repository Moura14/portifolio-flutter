import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponaiveAppBar extends StatelessWidget {
  const ResponaiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        title: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Text(
                    'João Gabriel',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ResponsiveVisibility(
                    visible: false,
                    visibleWhen: const [Condition.largerThan(name: MOBILE)],
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Experiência',
                              style: TextStyle(color: Colors.grey),
                            )),
                        const SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Formação',
                              style: TextStyle(color: Colors.grey),
                            )),
                        const SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Contato',
                              style: TextStyle(color: Colors.grey),
                            )),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
