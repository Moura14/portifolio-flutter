import 'package:cv_flutter/pages/widgets/exp_card.dart';
import 'package:flutter/material.dart';

class ExpResponsive extends StatelessWidget {
  const ExpResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 700
            ? Padding(
                padding: const EdgeInsets.only(left: 250, top: 250, right: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experiência',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 4,
                      runSpacing: 3.0,
                      children: const [
                        ExpCard(
                            icon: Icons.account_circle,
                            title:
                                'Polícia Civil do Distrito Federal - Estágiario',
                            description:
                                'Desenvolvimento de uma solução tecnológica para implementação da técnica de super-resolução em imagens de vídeos'),
                        ExpCard(
                            icon: Icons.account_circle,
                            title: 'OLX Clone - Desenvolvedor Mobile',
                            description:
                                'clone do aplicativo OLX feito com Flutter e MobX para gerenciamento de estado e Parse Server para armazenamento de informações dos clientes, vendas, produtos e etc..'),
                        ExpCard(
                            icon: Icons.account_circle,
                            title: 'Buscador de GIFs - Desenvolvedor Mobile',
                            description:
                                'Aplicativo de Buscador de GIFs feito com Flutter juntamente com a API da Giphy Developers'),
                        ExpCard(
                            icon: Icons.account_circle,
                            title: 'Loja virtual - Desenvolvedor Mobile',
                            description:
                                'Aplicativo feito em Flutter com Firebase para Loja Virtual com login por email, pesquisa de produtos, carrinho de compras, lista de categorias,cupom de desconto e etc..')
                      ],
                    )
                  ],
                ))
            : Padding(
                padding: const EdgeInsets.only(top: 150, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Experiência',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
      },
    );
  }
}
