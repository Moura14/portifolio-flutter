import 'package:cv_flutter/pages/widgets/exp_card.dart';
import 'package:flutter/material.dart';

class ExpResponsive extends StatelessWidget {
  const ExpResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 200, left: 150),
        child: LayoutBuilder(
          builder: (builder, constraints) {
            return constraints.maxWidth > 700
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Experiência',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque imperdiet volutpat turpis rhoncus facilisis. Praesent sit amet nisi metus. Proin finibus lacinia orci nec convallis',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Wrap(
                        children: const [
                          ExpCard(
                              icon: Icons.abc,
                              title: 'Estágiairo',
                              time: '2022 - atualmente'),
                          ExpCard(
                              icon: Icons.abc,
                              title: 'Estágiairo',
                              time: '2022 - atualmente'),
                          ExpCard(
                              icon: Icons.abc,
                              title: 'Estágiairo',
                              time: '2022 - atualmente')
                        ],
                      )
                    ],
                  )
                : Container();
          },
        ));
  }
}
