import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeResponsive extends StatelessWidget {
  const HomeResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120, bottom: 120),
      child: Column(
        children: [
          LayoutBuilder(builder: (context, constraints) {
            return constraints.maxWidth > 700
                ? Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 350,
                        child: Image.asset('images/home.png'),
                      )),
                      const SizedBox(
                        width: 90,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const AutoSizeText(
                              'Desenvolvedor Mobile | Flutter & Dart',
                              style: TextStyle(
                                  fontSize: 60, fontWeight: FontWeight.bold),
                              maxFontSize: 100,
                              maxLines: 3,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      launch(
                                          'https://www.linkedin.com/in/jo%C3%A3o-gabriel-906094217/');
                                    },
                                    icon:
                                        const Icon(FontAwesomeIcons.linkedin)),
                                IconButton(
                                    onPressed: () {
                                      launch(
                                          'https://github.com/Moura14?tab=repositories');
                                    },
                                    icon: const Icon(FontAwesomeIcons.github)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.email_sharp))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 120, left: 10),
                    child: Column(
                      children: [
                        Image.asset('images/home.png'),
                        const AutoSizeText(
                          'Desenvolvedor Mobile | Flutter & Dart',
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                          maxFontSize: 100,
                          maxLines: 3,
                        ),
                        const SizedBox(
                          height: 16,
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
                                onPressed: () {},
                                icon: const Icon(Icons.person))
                          ],
                        )
                      ],
                    ),
                  );
          })
        ],
      ),
    );
  }
}
