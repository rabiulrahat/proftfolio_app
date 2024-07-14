import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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

          )
        ],
      ),
    );
  }
}
