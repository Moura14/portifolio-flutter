import 'package:cv_flutter/pages/widgets/exp_card.dart';
import 'package:flutter/material.dart';

class ExpResponsive extends StatelessWidget {
  const ExpResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (builder, constraints) {
        return constraints.maxWidth > 700
            ? Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experiência',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mauris mi, sodales vel risus ac, interdum lacinia diam. Etiam quis purus elit. Nam porta ut quam ac sollicitudin. Ut est nunc, cursus id aliquam ut, egestas in ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in iaculis sem. Nulla rhoncus, purus vel ullamcorper accumsan, massa sem volutpat augue, ut laoreet lorem leo auctor ex. Phasellus dapibus ',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: const [
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiairo',
                            time: '2022 - atualmente'),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiairo',
                            time: '2022 - atualmente'),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiairo',
                            time: '2022 - atualmente')
                      ],
                    )
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experiência',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mauris mi, sodales vel risus ac, interdum lacinia diam. Etiam quis purus elit. Nam porta ut quam ac sollicitudin. Ut est nunc, cursus id aliquam ut, egestas in ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in iaculis sem.',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Wrap(
                      children: const [
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiairo',
                            time: '2022 - atualmente'),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiairo',
                            time: '2022 - atualmente'),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiairo',
                            time: '2022 - atualmente')
                      ],
                    )
                  ],
                ),
              );
      },
    );
  }
}
