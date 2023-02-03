import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ListTile(
            title: const Text('Experiência'),
            textColor: Colors.black,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Fornação'),
            textColor: Colors.black,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Contato'),
            textColor: Colors.black,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
