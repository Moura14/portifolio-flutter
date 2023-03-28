import 'package:auto_size_text/auto_size_text.dart';
import 'package:cv_flutter/pages/widgets/formation_item.dart';
import 'package:flutter/material.dart';

class FormaResponsive extends StatelessWidget {
  const FormaResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return constraints.maxWidth > 700
          ? Padding(
              padding: const EdgeInsets.only(top: 200, left: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Formação',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset('images/education.png'),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                          child: Column(
                        children: const [
                          AutoSizeText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquam tincidunt odio quis mollis. Maecenas lacinia nec tellus a vulputate. Maecenas ullamcorper lectus id ex congue',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            maxLines: 3,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          FormationItem(
                            title: 'Formação',
                            icon: Icons.abc,
                          ),
                          FormationItem(
                            title: 'Formação',
                            icon: Icons.abc,
                          ),
                          FormationItem(
                            title: 'Formação',
                            icon: Icons.abc,
                          )
                        ],
                      )),
                    ],
                  )
                ],
              ),
            )
          : Container(
              color: Colors.black,
            );
    });
  }
}