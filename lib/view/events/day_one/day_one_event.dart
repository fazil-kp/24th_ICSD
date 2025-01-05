import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/common_elements/event_main_scree.dart';

class DayOneEvent extends StatelessWidget {
  final bool? isScreen;
  const DayOneEvent({super.key, this.isScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          EventMainScree(
            heading: "Day 1 Events",
            isScreen: isScreen,
            events: [
              EventCard(
                no: 1,
                program: "Registrations",
                venue: 'RBS Auditorium, Rajagiri Valley Campus, Kakkanad',
                time: '9:00 - 9.30 ',
              ),
              EventCard(
                no: 2,
                program: "Tea and Snacks ",
                time: '9.30- 9.50 ',
              ),
              EventCard(
                no: 3,
                program: "Rajagiri Anthem",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '9.55-10.00 ',
              ),
              EventCard(
                no: 4,
                program: "Lamp Lighting and dignitaries on the dias",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '10.00 - 10.10 ',
              ),
              EventCard(
                no: 5,
                program: "Renditions",
                venue: 'RBS Auditorium (Level 7 RBS)',
                time: '10.10-10.15',
                content: 'Department Choir: What a Wonderful World by Bob Thiele and George David Weiss',
              ),
              EventCard(
                no: 6,
                program: "Welcome by Conference Cochairs ",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '10.15-10.20 ',
                content: 'Delivered by Dr. Kiran Thampi, Head, School of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery; Convenor, 24th ICSD International Biennial Conference 2025 (DYUTI 25th Edition), Honorary Fellow, University of Edinburgh, Prof Fr Saju MD, Principal, Rajagiri College of Social Sciences (Autonomous) & Honorary Fellow, University of Edinburgh, and Prof George Palattiyil, University of Edinburgh. ',
              ),
              EventCard(
                no: 7,
                program: "Provincial's Address",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '10.20-10.30',
                content: 'Fr Dr Benny Nalkara, CMI,Provincial, Sacred Hearts Province ',
              ),
              EventCard(
                no: 8,
                program: "President's Welcome and ICSD 50th Anniversary Address",
                venue: 'RBS Auditorium (Level 7 RBS)',
                time: '10.30-11.15',
                content: 'Prof. Manohar Pawar, President, ICSD, Charles Sturt University, Australia',
              ),
              EventCard(
                no: 9,
                program: "Principal's Address",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '11:15 - 11:25',
                content: 'Prof Fr Saju M.D, CMI Principal, Rajagiri College of Social Sciences (Autonomous),Patron, 24th ICSD International Biennial Conference 2025  -DYUTI 25 Edition; Vice President Communications, ICSD, Honorary Fellow, University of Edinburg',
              ),
              EventCard(
                no: 10,
                program: "Address by member Secretary, KSHE ",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '11:25 - 11:35',
                content: 'Dr. Rajan Varughese (Member Secretary, The Kerala State Higher Education Council, Former Pro-Vice Chancellor,Mahatma Gandhi University, Kottayam)',
              ),
              EventCard(
                no: 11,
                program: "Felicitation",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '11.35-11.45',
                content: 'Dr Binoy Joseph, Associate Director, Professor,Rajagiri College of Social Sciences (Autonomous), Kalamassery',
              ),
              EventCard(
                no: 12,
                program: "Felicitation from International Participants ",
                venue: 'RBS Auditorium (Level 7 RBS) ',
                time: '11.45-11.50',
                content: 'Dr Denisse Burnette, Virginia Commonwealth University, USA; Dr Joan Pittman, School of Social Work, University of Maryland, USA',
              ),
              EventCard(
                no: 13,
                program: "Releasing of Abstract Book and Department books and SDI 50th Anniversary special issue",
                venue: 'RBS Auditorium (Level 7 RBS)',
                time: '11.50-12.00',
              ),
              EventCard(
                no: 14,
                program: "ICSD Keynote Address ",
                venue: 'RBS Auditorium (Level 7 RBS)',
                time: '12.00 -12.50',
                content: 'Prof. John Devaney, Dean and Head of the School of Social and Political Science, and Centenary Chair of Social Work, University of Edinburg, U.K ',
              ),
              EventCard(
                no: 15,
                program: "Lunch ",
                time: '12.50-13.50',
              ),
              EventCard(
                no: 16,
                program: "Shanti Khinduka Lecture ",
                venue: 'RBS Auditorium ',
                time: '14.00-14.45',
                content: "SPEAKER: Shri Manoj Jha, H'ble Member of Parliament, India THEME: Allies and Agitators for Structural Transformation: Political Engagement in Social Work ",
              ),
            ],
          )
        ],
      ),
    );
  }
}
