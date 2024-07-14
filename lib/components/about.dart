import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(20.0),

      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset('assets/partho.jpg'),
          Text(
            'Partho Gosh',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "I am a full time researcher,Currently i am prsuing phd in USA",
            textAlign: TextAlign.center,
          ),
          const Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text('Machine learning '),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
              ),
              Chip(
                label: Text('Deep learning'),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
              ),
              Chip(
                label: Text('Circuit design'),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
              ),
              Chip(
                label: Text('Circuit Simulation'),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
              ),
            ],
          ),
          const Divider(),
          Container(
            child: const Card(
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.github,
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                    children: [
                      Text("Github"),
                    ],
                  ),

                ]),
            ),
          ),
          Container(
            child: const Card(
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.xTwitter,
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                    children: [
                      Text("X"),
                    ],
                  ),

                ]),
            ),
          ),
          Container(
            child: const Card(
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.googleScholar,
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                    children: [
                      Text("Google Scholar"),
                    ],
                  ),

                ]),
            ),
          ),
          Container(
            child: const Card(
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.researchgate,
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                    children: [
                      Text("Research Gate"),
                    ],
                  ),

                ]),
            ),
          )
        ],
      ),
    );
  }
}
