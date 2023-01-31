import 'package:flutter/material.dart';

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
              const Expanded(
                  child: FlutterLogo(
                size: 200,
              )),
              const SizedBox(
                width: 90,
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Desenvolvedor Mobile | Flutter & Dart',
                      style:
                          TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search))
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
