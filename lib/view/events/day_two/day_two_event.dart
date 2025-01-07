import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/common_elements/event_main_screen.dart';

class DayTwoEvent extends StatelessWidget {
  final bool? isScreen;
  const DayTwoEvent({super.key, this.isScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          EventMainScreen(
            heading: "Day 2 Events",
            date: "09-01-2025",
            isScreen: isScreen,
            events: [
              EventCard(
                no: 1,
                program: "Recap",
                venue: "RBS Auditorium",
                time: "9.15- 9.30",
                content: "SPEAKER: Mr. Mathew T John, Assistant Professor, Rajagiri College of Social Sciences(Autonomous) Kalamassery ",
              ),
              EventCard(
                no: 2,
                program: "Keynote Address",
                venue: "RBS Auditorium",
                time: "9.30-10.00",
                content: "SPEAKER: Dr Dina Sidhva, Lecturer in Social Work, University of the West of Scotland, Fellow, Higher Education Academy, UK (read out by Prof. Dr George Palattiyil, University of Edinburg)",
              ),
              EventCard(
                no: 3,
                program: "Plenary Session 2 ",
                venue: "RBS Auditorium",
                time: "10.00-10.30",
                content: " MODERATOR: Dr Manish K Jha, TISS\nSPEAKERS: - Prof. Lynn Murphy Michalopoulos, Director of Global Initiatives, Associate Professor, University of Maryland, School of Social Work\nDr. Joan Pittman, University of Maryland School of Social Work\nLouise Brown, Professor, University of Bath ",
              ),
              EventCard(
                no: 4,
                program: "Conclusion by the Moderator",
                venue: "RBS Auditorium",
                time: "10.30-10.45",
              ),
              EventCard(
                no: 5,
                program: "ICSD Awards",
                venue: "RBS Auditorium",
                time: "10.45- 11.00",
              ),
              EventCard(
                no: 6,
                program: "Photo Session",
                venue: "RBS Auditorium",
                time: "11.00 -11.10",
              ),
              EventCard(
                no: 7,
                program: "Tea and Snacks",
                time: "11.10-11.20",
              ),
              EventCard(
                no: 8,
                program: "Plenary Session 3",
                venue: "RBS Auditorium",
                time: "11.20- 12.00",
                content: "MODERATOR: Dr Philip Hong, University of Georgia, USA\nSPEAKERS: - Dr Bipin Jojo, TISS, Mumbai\nDr Chaya Possick, Associate  Professor, Ariel University\nBaiju P Vareed, Associate Professor, MacEwan University, Edmonton, Canada  ",
              ),
              EventCard(
                no: 9,
                program: "Workshop 1",
                venue: "Samanvaya (Level 5 RBS)",
                time: "12.00-13.00",
                content: " SPEAKERS: Dr Julie Richards, Associate Professor & Department Chair, SUNY Plattsburgh, New York, USA Dr Annah Amani, Program Officer, Africa Plant With Purpose, San Diego\nTHEME: Advancing Gender Equality and Poverty Reduction Through Innovative Agricultural Programs",
              ),
              EventCard(
                no: 10,
                program: "Workshop 2",
                venue: "Conference Hall (Level 3 RBS)",
                time: "12.00-13.00",
                content: "SPEAKER: Prof. Alice K. Butterfield, University of Illinois at Chicago, USA Dr. Wassie Kebede, Associate Professor, Addis Ababa University\nTHEME: Creating a Sustainable PhD Program in Social Work and Social Development: A Collaborative University-to University Partnership",
              ),
              EventCard(
                no: 11,
                program: "Workshop 3",
                venue: "Conference Hall (RSOM)- Adjacent Building to RBS",
                time: "12.00-13.00",
                content: "SPEAKERS: Prof. Dr George Palattiyil, University of Edinburg, Prof John Devaney, University of Edinburgh\nDr Dina Sidhva, University of the West of Scotland\nTHEME: Writing for Academic Publication",
              ),
              EventCard(
                no: 12,
                program: "Lunch",
                time: "13.00-14.00",
              ),
              EventCard(
                no: 13,
                program: "Paper Presentations Parallel Venue 1",
                venue: "Concordia (Level 5 RBS)",
                time: "14.00-15.30",
                content: "CHAIR: Dr Naseem Khan Department of Social Work at Aligarh Muslim University (AMU), Aligarh\n THEMES: Ethical Practice and Professional Development & Justice and Restorative Practices",
              ),
              EventCard(
                no: 14,
                program: "Paper Presentations Parallel Venue 2",
                venue: "Samanvaya (Level 5 RBS)",
                time: "14.00-15.30",
                content: "CHAIR: Dr Rajeev S P Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery\nTHEMES: Policy Advocacy and Social Change & Community Empowerment and Participation",
              ),
              EventCard(
                no: 15,
                program: "Paper Presentations Parallel Venue 3",
                venue: "Conference Hall (Level 3 RBS)",
                time: "14.00-15.30",
                content: "CHAIR: Dr. Nycil Romis Thomas, Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery \nTHEMES: Policy Advocacy and Social Change & Community Empowerment and Participation",
              ),
              EventCard(
                no: 16,
                program: "Paper Presentations Parallel Venue 4",
                venue: "KRL Hall (RSOM) -Adjacent Building to RBS",
                time: "14.00-15.30",
                content: "CHAIR: Baiju P Vareed, Associate Professor, MacEwan University, Edmonton, Canada \nTHEMES: Health and Well-Being & Community Empowerment and Participation",
              ),
              EventCard(
                no: 17,
                program: "Paper Presentations Parallel Venue 5",
                venue: "Conference Hall (RSOM)- Adjacent Building to RBS",
                time: "14.00-15.30",
                content: "CHAIR: Chair - Dr. V Kalyani Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery\nTHEMES: Environmental Sustainability and Resilience & Community Empowerment and Participation",
              ),
              EventCard(
                no: 18,
                program: "Tea and Snacks",
                time: "15.30- 15.45",
              ),
              EventCard(
                no: 19,
                program: "ICSD Branch Meetings - Africa",
                venue: "Samanvaya (Level 5 RBS)",
                time: "15.45 – 16.15",
              ),
              EventCard(
                no: 19,
                program: "ICSD Branch Meetings - Asia Pacific",
                venue: "Concordia (Level 5 RBS",
                time: "15.45 – 16.15",
              ),
              EventCard(
                no: 19,
                program: "ICSD Branch Meetings - Europe",
                venue: "Conference Hall (Level 3 RBS)",
                time: "15.45 – 16.15",
              ),
            ],
          )
        ],
      ),
    );
  }
}
