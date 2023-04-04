import 'package:cv_flutter/pages/widgets/formation_item.dart';
import 'package:flutter/material.dart';

class ContactResponsive extends StatelessWidget {
  const ContactResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          const Text(
            'Precisa de um projeto?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Vamos marcar uma conversa!',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: const [
                FormationItem(
                  title: 'Email',
                  icon: Icons.email_sharp,
                ),
                FormationItem(
                  title: '(61) 98207-1409',
                  icon: Icons.phone,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
