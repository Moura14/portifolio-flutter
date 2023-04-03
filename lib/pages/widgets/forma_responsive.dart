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
              padding: const EdgeInsets.only(top: 200, left: 100, right: 100),
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
                        child: Image.asset(
                          'images/education.png',
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Column(
                        children: const [
                          AutoSizeText(
                            'Possuo o ensino médio completo e atualmente estou cursando análise e desenvolvimento de sistemas. Além de sempre estar fazendo cursos complementares para sempre me manter atualizado',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            maxLines: 5,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          FormationItem(
                            title: 'Ensino médio completo',
                            icon: Icons.account_circle,
                          ),
                          FormationItem(
                            title:
                                'Técnologo em Análise e Desenvolvimento de Sistemas (em andamento)',
                            icon: Icons.account_circle,
                          ),
                        ],
                      )),
                    ],
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Formação',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 350,
                    child: Image.asset('images/education.png'),
                  ),
                  const Text(
                    'Possuo o ensino médio completo e atualmente estou cursando Análise e Desenvolvimento de Sistemas. Além de sempre estar fazendo cursos complementares para sempre me manter atualizado',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const FormationItem(
                    title: 'Ensino médio completo',
                    icon: Icons.account_circle,
                  ),
                  const FormationItem(
                    title:
                        'Técnologo em Análise e Desenvolvimento de Sistemas (em andamento)',
                    icon: Icons.account_circle,
                  ),
                ],
              ),
            );
    });
  }
}
