import 'package:cv_flutter/pages/widgets/exp_card.dart';
import 'package:flutter/material.dart';

class ExpResponsive extends StatelessWidget {
  const ExpResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 250, left: 300),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          ExpCard(
            title: ('Estágiario'),
            desription: ('Policia Civil do Distrito Federal'),
            subtitle:
                ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel augue a nulla tristique vestibulum. Nam semper,.'),
          ),
          ExpCard(
            title: ('Estágiario'),
            desription: ('Policia Civil do Distrito Federal'),
            subtitle:
                ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel augue a nulla tristique vestibulum. Nam semper,.'),
          ),
          ExpCard(
            title: ('Estágiario'),
            desription: ('Policia Civil do Distrito Federal'),
            subtitle:
                ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel augue a nulla tristique vestibulum. Nam semper,.'),
          )
        ],
      ),
    );
  }
}
