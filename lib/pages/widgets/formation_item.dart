import 'package:flutter/material.dart';

class FormationItem extends StatelessWidget {
  const FormationItem({super.key, this.title = '', this.icon});

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
      textColor: Colors.grey,
      leading: Icon(icon),
    );
  }
}
