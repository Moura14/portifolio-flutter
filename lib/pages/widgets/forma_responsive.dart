import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FormaResponsive extends StatelessWidget {
  const FormaResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth >= 700
          ? Padding(
              padding: const EdgeInsets.only(left: 250, top: 250, right: 100),
              child: Column(
                children: [
                  const Text(
                    'Formação',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Expanded(
                          child: AutoSizeText(
                        'Estou cursando Análise e desenvolvimento de sistemas na UDF além de sempre estar fazendo cursos intensivos para me qualificar ainda mais na área',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                      const SizedBox(
                        height: 90,
                      ),
                      Expanded(
                        child: Image.asset('images/education.png'),
                      )
                    ],
                  )
                ],
              ))
          : Container();
    });
  }
}
