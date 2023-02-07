import 'package:cv_flutter/pages/widgets/exp_card.dart';
import 'package:flutter/material.dart';

class ExpResponsive extends StatelessWidget {
  const ExpResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: double.infinity),
        child: Padding(
            padding: const EdgeInsets.only(top: 250, left: 290),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Experiência',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 4.0,
                  children: const [
                    ExpCard(
                      title: ('Estágiario'),
                      desription: ('Policia Civil do Distrito Federal'),
                      subtitle:
                          ('Desenvolvimento de uma solução tecnológica para implementação da técnica de super-resolução em imagens de vídeos. Construção de algoritmo com linguagem Python'),
                    ),
                    ExpCard(
                      title: ('Desenvolvedor Mobile'),
                      desription: ('Loja virtual'),
                      subtitle:
                          ('Aplicativo feito em Flutter com Firebase para Loja Virtual com login por email, pesquisa de produtos, carrinho de compras, lista de categorias, cupom de desconto e etc..'),
                    ),
                    ExpCard(
                      title: ('Desenvolvedor Mobile'),
                      desription: ('OLX clone'),
                      subtitle:
                          ('Clone do aplicativo OLX feito com Flutter e MobX para gerenciamento de estado e Parse Server para armazenamento de informações dos clientes, vendas, produtos e etc..'),
                    )
                  ],
                )
              ],
            )));
  }
}
