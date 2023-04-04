import 'package:cv_flutter/pages/widgets/contect_responsive.dart';
import 'package:cv_flutter/pages/widgets/exp_resonsive.dart';
import 'package:cv_flutter/pages/widgets/forma_responsive.dart';
import 'package:cv_flutter/pages/widgets/responsive_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer_tile.dart';

import '../widgets/home_responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 52), child: ResponaiveAppBar()),
      drawer: const DrawerTile(),
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: ListView(
              children: const [
                HomeResponsive(),
                ExpResponsive(),
                FormaResponsive(),
                ContactResponsive()
              ],
            )),
      ),
    );
  }
}
