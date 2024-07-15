import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';
import '../data_model/paper_datamodel.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  List<ResearchPaper> papers = [
    ResearchPaper(
        date: "September 2018",
        paperName:
            "Design of Reversible Shift Registers Minimizing Number of Gates, Constant Inputs and Garbage Outputs",
        journalName: "IEEE Xplore",
        journalType: "Conference"),
    ResearchPaper(
        date: "September 2021",
        paperName:
            "Future Friend Recommendation System based on User Similarities in Large-Scale on Social Network",
        journalName: "IJACSA",
        journalType: "Journal"),
    ResearchPaper(
        date: "October 2021",
        paperName:
            "Deep Viewing for Covid-19 Detection from X-Ray Using CNN Based Architecture",
        journalName: "EECSI",
        journalType: "Conference"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const Text(
            "Education",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
                itemCount: papers.length,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            papers[index].date,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            papers[index].journalName,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            papers[index].journalType,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(papers[index].paperName),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
