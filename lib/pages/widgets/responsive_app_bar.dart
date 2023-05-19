import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponaiveAppBar extends StatelessWidget {
  const ResponaiveAppBar({required this.onMenuClick, super.key});

  final ValueChanged<int> onMenuClick;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > 800
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Center(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                '<João Gabriel/>',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 25),
                              ),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                ResponsiveVisibility(
                                    visible: false,
                                    visibleWhen: const [
                                      Condition.largerThan(name: MOBILE)
                                    ],
                                    child: Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              onMenuClick(1);
                                            },
                                            child: const Text(
                                              'Experiência',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              onMenuClick(2);
                                            },
                                            child: const Text(
                                              'Formação',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              onMenuClick(3);
                                            },
                                            child: const Text(
                                              'Contato',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )),
                                      ],
                                    ))
                              ],
                            )
                          ]))),
            )
          : AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: const Text(
                'João Gabriel',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            );
    });
  }
}
