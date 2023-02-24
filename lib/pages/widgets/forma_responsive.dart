import 'package:flutter/material.dart';

class FormaResponsive extends StatelessWidget {
  const FormaResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth >= 700
          ? Padding(
              padding: const EdgeInsets.only(left: 250, top: 150, right: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Formação',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              'Desenvolvo pequenos aplicativos utilizando o Flutter/Dart além de sempre estar fazendo cursos na área para me aperfeiçoar ainda mais na área',
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            ListTile(
                              title: Text(
                                  'Criação de Apps Android/iOS/Web com Flutter'),
                              textColor: Colors.grey,
                              leading: Icon(Icons.book),
                              iconColor: Colors.grey,
                            ),
                            ListTile(
                              title: Text(
                                  'Notificações por Push no Android, iOS e Web com Flutter'),
                              textColor: Colors.grey,
                              leading: Icon(Icons.book),
                              iconColor: Colors.grey,
                            ),
                            ListTile(
                              title:
                                  Text('Responsividade no Flutter em Detalhes'),
                              textColor: Colors.grey,
                              leading: Icon(Icons.book),
                              iconColor: Colors.grey,
                            ),
                            ListTile(
                              title: Text('Curso de Flutter'),
                              textColor: Colors.grey,
                              leading: Icon(Icons.book),
                              iconColor: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Expanded(
                        child: Image.asset('images/education.png'),
                      )
                    ],
                  )
                ],
              ))
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Formação',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Desenvolvo pequenos aplicativos utilizando o Flutter/Dart além de sempre estar fazendo cursos na área para me aperfeiçoar ainda mais na área',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text('Criação de Apps Android/iOS/Web com Flutter'),
                    textColor: Colors.grey,
                    leading: Icon(Icons.book),
                    iconColor: Colors.grey,
                  ),
                  ListTile(
                    title: Text(
                        'Notificações por Push no Android, iOS e Web com Flutter'),
                    textColor: Colors.grey,
                    leading: Icon(Icons.book),
                    iconColor: Colors.grey,
                  ),
                  ListTile(
                    title: Text('Responsividade no Flutter em Detalhes'),
                    textColor: Colors.grey,
                    leading: Icon(Icons.book),
                    iconColor: Colors.grey,
                  ),
                  ListTile(
                    title: Text('Curso de Flutter'),
                    textColor: Colors.grey,
                    leading: Icon(Icons.book),
                    iconColor: Colors.grey,
                  )
                ],
              ),
            );
    });
  }
}
