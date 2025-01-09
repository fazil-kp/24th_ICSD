import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/common_elements/event_main_screen.dart';

class DayThreeEvent extends StatelessWidget {
  final bool? isScreen;
  const DayThreeEvent({super.key, this.isScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          EventMainScreen(
            heading: "Day 3 Events",
            date: "10-01-2025",
            isScreen: isScreen,
            events: [
              EventCard(no: 1, program: "Recap", venue: "RBS Auditorium", time: "9.10 - 9.20", content: "Sr. Bincy Maria, Assistant Professor, Rajagiri College of Social Sciences, (Autonomous) Kalamassery"),
              EventCard(no: 2, program: "Keynote Address", venue: "RBS Auditorium", time: "9.20 – 9.50", content: "Prof. Dr George Palattiyil, University of Edinburgh"),
              EventCard(no: 3, program: "Plenary Session 4", venue: "RBS Auditorium", time: "9.50 – 10.30", content: "MODERATOR: Dr Stephanie Odera, BSW Program Director,Associate Professor in Teaching, Virginia Commonwealth University\nSPEAKERS: Vijayan K Pillai, Professor, University of Texas at Arlington, USA\nDr. Juliann Lynn Nagoshi, Assistant Professor, Arizona State University, USA\nDr Lea Caragata, Director and Associate Professor University of British Columbia\nHadijah Mwenyango, The University of Edinburgh"),
              EventCard(no: 4, program: "Plenary Session 5", venue: "RBS Auditorium", time: "10.30 - 11.10", content: "MODERATOR: Prof. Dr Manohar Pawar, President, ICSD, Charles Sturt University, Australia\nSPEAKERS: Dr Wassie Kebede, Associate Professor, Addis Ababa University\nEric Schade, Assistant Professor, University of West Florida\nSylvia Garcia Delahaye, Professor, Applied University of Social Work-HETS Geneva, Dr Manish K Jha, TISS, Mumbai"),
              EventCard(no: 5, program: "ICSD Award Ceremony: Social Development Issues", venue: "RBS Auditorium", time: "11.15 - 11.25"),
              EventCard(no: 6, program: "Tea and Snacks", time: "11.25 - 11.35"),
              EventCard(no: 7, program: "Plenary Session 6", venue: "RBS Auditorium", time: "11.35 - 12.15", content: "MODERATOR: Dr. Anish K R Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kochi\nSPEAKERS: Kathy Ellem, Researcher, University of Queensland\nLauren Ann Graham, Director, CSDA\nAvril Mclvor, Associate Professor,University of Edinburgh\nOsamu Miyazaki, Associate Professor, Meiji Gakuin University, Japan"),
              EventCard(no: 8, program: "Workshop 6", venue: "Concordia (Level 5 RBS)", time: "12.20 - 13.15", content: "THEME:Managing trauma: tools for building Individual resilience\nSPEAKERS: Dr. Julie Richards, Associate Professor & Department Chair. SUNY Plattsburgh, New York, USA\nDr Guy Shrayer, Ghana"),
              EventCard(no: 9, program: "Workshop 7", venue: "Conference Hall (Level 3 RBS)", time: "12.20 - 13.15", content: "THEME: The Second World Summit for Social Development: Contributions of the International Consortium for Social Development\nSPEAKERS: Manohar Pawar, President ICSD\nLeila Patel\nRam Ramanathan\nBenjamin Lough\nBipin Jojo"),
              EventCard(no: 10, program: "Lunch", time: "13.15-14.00"),
              EventCard(no: 11, program: "Paper Presentations Parallel Venue 1", venue: "Concordia (Level 5 RBS)", time: "14:00 - 15:30", content: "CHAIR: Dr. Deepa Rasheed Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery\nTHEME: Education and Lifelong Learning & Technology and Digital Solutions"),
              EventCard(no: 12, program: "Paper Presentations Parallel Venue 2", venue: "Samanvaya (Level 5 RBS)", time: "14:00 - 15:30", content: "CHAIR: Prof. Dr John Devaney, Dean and Head of the School of Social and Political Science Centenary Chair of Social Work, University of Edinburg, U.K\nTHEME: Poverty, Inequality and Policy Advocacy and Social Change & Environmental Sustainability and Resilience"),
              EventCard(no: 13, program: "Paper Presentations Parallel Venue 3", venue: "Conference Hall (Level 3 RBS)", time: "14:00 - 15:30", content: "CHAIR: Dr Annapuranam K Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery\nTHEME: Health & Well being"),
              EventCard(no: 14, program: "Paper Presentations Parallel Venue 4", venue: "Conference Hall (RSOM) -Adjacent Building to RBS", time: "14:00 - 15:30", content: "CHAIR: Prof. Dr George Palattiyil University of Edinburg\nTHEME: Education and Lifelong Learning & Technology and Digital Solutions"),
              EventCard(no: 15, program: "Paper Presentations Parallel Venue 5", venue: "Conference Hall (RSOM) -Adjacent Building to RBS", time: "14:00 - 15:30", content: "CHAIR: Dr. Sunirose I P Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery\nTHEME: Health & Well Being"),
              EventCard(no: 16, program: "Tea and Snacks", time: "15:30-15.45"),
              EventCard(no: 17, program: "Dan Sanders Peace Lecture", venue: "RBS Auditorium", time: "15.45-16.30", content: "SPEAKER: Shri Jawhar Sircar, Ex Member of Parliament"),
              EventCard(no: 18, program: "Valedictory Function", venue: "RBS Auditorium", time: "16.30-17.30", content: "(ICSD Award Ceremony)"),
            ],
          )
        ],
      ),
    );
  }
}
