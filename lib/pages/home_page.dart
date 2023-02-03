import 'package:cv_flutter/pages/widgets/responsive_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets/home_responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 52), child: ResponaiveAppBar()),
      drawer: const ResponsiveVisibility(
        visible: false,
        visibleWhen: [
          Condition.smallerThan(name: DESKTOP),
        ],
        child: Drawer(),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: const [HomeResponsive()],
            )),
      ),
    );
  }
}
