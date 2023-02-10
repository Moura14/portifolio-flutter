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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return constraints.maxWidth > 700
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Experiência',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            spacing: 8,
                            runSpacing: 4.0,
                            children: const [
                              ExpCard(
                                  icon: Icons.account_circle,
                                  title:
                                      'Polícia Civil do Distrito Federal - Estágiario',
                                  description:
                                      'Desenvolvimento de uma solução tecnológica para implementação da técnica de super-resolução em imagens de vídeos'),
                              ExpCard(
                                  icon: Icons.account_circle,
                                  title: 'Loja virtual - Desenvolvedor Mobile',
                                  description:
                                      'Aplicativo feito em Flutter com Firebase para Loja Virtual com login por email, pesquisa de produtos, carrinho de compras, lista de categorias,cupom de desconto e etc..'),
                              ExpCard(
                                  icon: Icons.account_circle,
                                  title:
                                      'Buscador de GIFs - Desenvolvedor Mobile',
                                  description:
                                      'Aplicativo de Buscador de GIFs feito com Flutter juntamente com a API da Giphy Developers')
                            ],
                          )
                        ],
                      )
                    : Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Experiência',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.start,
                              spacing: 8,
                              runSpacing: 4.0,
                              children: const [
                                ExpCard(
                                    icon: Icons.account_circle,
                                    title:
                                        'Polícia Civil do Distrito Federal - Estágiario',
                                    description:
                                        'Desenvolvimento de uma solução tecnológica para implementação da técnica de super-resolução em imagens de vídeos'),
                                ExpCard(
                                    icon: Icons.account_circle,
                                    title:
                                        'Loja virtual - Desenvolvedor Mobile',
                                    description:
                                        'Aplicativo feito em Flutter com Firebase para Loja Virtual com login por email, pesquisa de produtos, carrinho de compras, lista de categorias,cupom de desconto e etc..'),
                                ExpCard(
                                    icon: Icons.account_circle,
                                    title:
                                        'Buscador de GIFs - Desenvolvedor Mobile',
                                    description:
                                        'Aplicativo de Buscador de GIFs feito com Flutter juntamente com a API da Giphy Developers')
                              ],
                            )
                          ],
                        ),
                      );
              },
            )));
  }
}
