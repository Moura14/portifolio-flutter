import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FormaResponsive extends StatelessWidget {
  const FormaResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return constraints.maxWidth > 700
          ? Padding(
              padding: const EdgeInsets.only(left: 100, top: 200),
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
                    children: const [
                      FlutterLogo(
                        size: 215,
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Expanded(
                        child: AutoSizeText(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquam tincidunt odio quis mollis. Maecenas lacinia nec tellus a vulputate. Maecenas ullamcorper lectus id ex congue',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                          maxLines: 3,
                        ),
                      )
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
