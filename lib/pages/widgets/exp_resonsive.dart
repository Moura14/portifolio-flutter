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
                padding: const EdgeInsets.only(left: 100),
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
                      'Atualmente sou estágiario em um projeto de super-resolução na Polícia Cívil do Distrito Federal. Possuo também vários projetos práticos no meu GitHub',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 4.0,
                      spacing: 8.0,
                      children: const [
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiario',
                            time: 'Polícia Civil do Distrito Federal',
                            descrition:
                                'Identificação das diferentes abordagens para implementação de técnica da super-resolução. Construção de algoritmo com linguagem Python. '),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Desenvolvedor Mobile',
                            time: 'OLX clone',
                            descrition:
                                ' clone do aplicativo OLX feito com Flutter e MobX para gerenciamento de estado e Parse Server para armazenamento de informações dos clientes '),
                        ExpCard(
                          icon: Icons.person,
                          title: 'Desenvolvedor Mobile',
                          time: 'Loja virtual',
                          descrition:
                              'Aplicativo feito em Flutter com Firebase para Loja Virtual com login por email, pesquisa de produtos, carrinho de compras, lista de categorias, cupom de desconto e etc',
                        )
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
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Atualmente sou estágiario em um projeto de super-resolução na Polícia Cívil do Distrito Federal. Possuo também vários projetos práticos no meu GitHub',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Wrap(
                      runSpacing: 4.0,
                      children: const [
                        ExpCard(
                            icon: Icons.person,
                            title: 'Estágiario',
                            time: 'Polícia Civil do Distrito Federal',
                            descrition:
                                'Desenvolvimento de uma solução tecnológica para implementação da técnica de super-resolução em imagens de vídeos'),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Desenvolvedor Mobile',
                            time: 'OLX clone',
                            descrition:
                                'clone do aplicativo OLX feito com Flutter e MobX para gerenciamento de estado e Parse Server para armazenamento de informações dos clientes, vendas, produtos e etc.'),
                        ExpCard(
                            icon: Icons.person,
                            title: 'Desenvolvedor Mobile',
                            time: 'Loja virtual',
                            descrition:
                                'Aplicativo feito em Flutter com Firebase para Loja Virtual com login por email, pesquisa de produtos, carrinho de compras, lista de categorias, cupom de desconto e etc..')
                      ],
                    )
                  ],
                ),
              );
      },
    );
  }
}
