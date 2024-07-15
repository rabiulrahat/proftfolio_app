import 'package:flutter/material.dart';
import 'package:proftfolio_app/components/about.dart';

import 'components/education.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List<Widget> navItems = [
    ElevatedButton(onPressed: () {}, child: const Text("Education")),
    ElevatedButton(onPressed: () {}, child: const Text("Skills")),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Color.fromARGB(179, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Partho's Blog"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                AboutPage(),
                EducationPage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
