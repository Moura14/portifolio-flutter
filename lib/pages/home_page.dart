import 'package:cv_flutter/pages/widgets/responsive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 52),
            child: ResponaiveAppBar()),
        drawer: ResponsiveVisibility(
            visible: false,
            visibleWhen: [
              Condition.largerThan(name: MOBILE),
            ],
            child: ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.smallerThan(name: DESKTOP),
              ],
              child: Drawer(
                backgroundColor: Colors.black,
              ),
            )));
  }
}
