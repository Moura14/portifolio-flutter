import 'package:cv_flutter/pages/widgets/contect_responsive.dart';
import 'package:cv_flutter/pages/widgets/exp_resonsive.dart';
import 'package:cv_flutter/pages/widgets/forma_responsive.dart';
import 'package:cv_flutter/pages/widgets/responsive_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer_tile.dart';

import '../widgets/home_responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Icons.arrow_circle_up_sharp),
          onPressed: () {
            scrollController.animateTo(0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          },
        ),
        backgroundColor: Colors.white,
        drawer: const DrawerTile(),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1000,
              ),
              child: Column(
                children: [
                  ResponaiveAppBar(
                    onMenuClick: _onMenuClick,
                  ),
                  const HomeResponsive(),
                  ExpResponsive(
                    key: keySection1,
                  ),
                  FormaResponsive(
                    key: keySection2,
                  ),
                  ContactResponsive(
                    key: keySection3,
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _onMenuClick(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = keySection1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySection2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySection3.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }
    final offset = renderBox.localToGlobal(Offset.zero);
    scrollController.animateTo(offset.dy,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
