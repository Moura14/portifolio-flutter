import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeResponsive extends StatelessWidget {
  const HomeResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Image.asset('images/home.png')),
              const SizedBox(
                width: 90,
              ),
              Expanded(
                child: Column(
                  children: [
                    const ResponsiveVisibility(
                      visible: false,
                      visibleWhen: [Condition.smallerThan(name: TABLET)],
                      child: Text(
                        'Desenvolvedor Mobile | Flutter & Dart',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ).SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              launch(
                                  'https://www.linkedin.com/in/jo%C3%A3o-gabriel-906094217/');
                            },
                            icon: const Icon(FontAwesomeIcons.linkedin)),
                        IconButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/Moura14?tab=repositories');
                            },
                            icon: const Icon(FontAwesomeIcons.github)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.person))
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
