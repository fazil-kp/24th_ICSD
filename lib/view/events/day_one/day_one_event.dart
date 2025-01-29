import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/common_elements/event_main_screen.dart';

class DayOneEvent extends StatelessWidget {
  final bool? isScreen;
  const DayOneEvent({super.key, this.isScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          EventMainScreen(
            heading: "Day 1 Events",
            date: '08-01-2025',
            isScreen: isScreen,
            events: [
              EventCard(no: 1, program: "Registrations", venue: "RBS Auditorium, Rajagiri Valley Campus, Kakkanad", time: "9.00 - 9.30"),
              EventCard(no: 2, program: "Tea and Snacks ", time: "9.30 - 9.50"),
              EventCard(no: 3, program: "Rajagiri Anthem", venue: "RBS Auditorium (Level 7 RBS)", time: "9.55 - 10.00"),
              EventCard(no: 4, program: "Lamp Lighting and dignitaries on the dias", venue: "RBS Auditorium (Level 7 RBS)", time: "10.00 - 10.10"),
              EventCard(no: 5, program: "Welcome by Conference Co-chairs", venue: "RBS Auditorium (Level 7 RBS)", time: "10.10 - 10.15", content: "Delivered by Dr Kiran Thampi, Head, Department of Social Work, Rajagiri College of Social Sciences (Autonomous), Kalamassery; Convenor, 24th ICSD International Biennial Conference 2025 (DYUTI 25th Edition on behalf of co conveners Prof Fr Saju MD, Principal, Rajagiri College of Social Sciences (Autonomous) and Prof George Palattiyil, University of Edinburgh"),
              EventCard(no: 6, program: "Provincial's Address", venue: "RBS Auditorium (Level 7 RBS)", time: "10.15 - 10.20", content: "SPEAKER: Fr Dr Benny Nalkara, CMI, Provincial, Sacred Heart Province"),
              EventCard(no: 7, program: "President's Welcome and ICSD 50th Anniversary Address", venue: "RBS Auditorium (Level 7 RBS)", time: "10.20 - 11.05", content: "SPEAKER: Prof. Dr Manohar Pawar, President, ICSD, Charles Sturt University, Australia"),
              EventCard(no: 8, program: "Principal's Address", venue: "RBS Auditorium (Level 7 RBS)", time: "11.05 - 11.15", content: "SPEAKER: Prof Fr Dr Saju M.D., CMI Principal, Rajagiri College of Social Sciences (Autonomous), Patron, 24th ICSD International Biennial Conference 2025 - DYUTI 25 Edition; Vice President Communications, ICSD"),
              EventCard(no: 9, program: "Address by member Secretary, KSHE", venue: "RBS Auditorium (Level 7 RBS) ", time: "11:15 - 11:25", content: "SPEAKER: Dr. Rajan Varughese (Member Secretary, The Kerala State Higher Education Council, Former Pro-Vice Chancellor,Mahatma Gandhi University, Kottayam)"),
              EventCard(no: 10, program: "Felicitation", venue: "RBS Auditorium (Level 7 RBS)", time: "11.25 - 11.35", content: "SPEAKER: Dr Binoy Joseph, Associate Director, Professor,Rajagiri College of Social Sciences (Autonomous), Kalamassery"),
              EventCard(no: 11, program: "Felicitation from International Participants ", venue: "RBS Auditorium (Level 7 RBS)", time: "11.35 - 11.45", content: "SPEAKER: Dr Denisse Burnette, Virginia Commonwealth University, USA; Dr Joan Pittman, School of Social Work, University of Maryland, USA"),
              EventCard(no: 12, program: "Releasing of Abstract Book and Department books and SDI 50th Anniversary special issue", venue: "RBS Auditorium (Level 7 RBS)", time: "11.45 - 11.50"),
              EventCard(no: 13, program: "Vote of Thanks", venue: "RBS Auditorium (Level 7 RBS)", time: "11.50 - 11.55", content: "SPEAKER: Dr. Anil John, Assistant Professor, RCSS"),
              EventCard(no: 14, program: "Renditions", venue: "RBS Auditorium (Level 7 RBS)", time: "11.55 - 12.05", content: "Department Choir: What a Wonderful World by Bob Thiele and George David Weiss"),
              EventCard(no: 15, program: "ICSD Keynote Address", venue: "RBS Auditorium(Level 7 RBS)", time: "12.05 - 12.55", content: "SPEAKER: Prof. Dr John Devaney, Dean and Head of the School of Social and Political Science, and Centenary Chair of Social Work, University of Edinburg, U.K."),
              EventCard(no: 16, program: "Lunch", time: "12.55 - 13.55"),
              EventCard(no: 17, program: "Shanti Khinduka Lecture", venue: "RBS Auditorium", time: "14.00 - 14.45", content: "SPEAKER: Shri Manoj Jha, Hon'ble Member of Parliament, India\nTHEME: Allies and Agitators for Structural Transformation: Political Engagement in Social Work"),
              EventCard(no: 18, program: "Plenary Session 1", venue: "RBS Auditorium", time: "15.00 - 15.30", content: "MODERATOR: Pro Fr Dr Saju M.D\nSPEAKERS: Prof. Melissa Grady, Catholic University of America, USA\nProf. Jo Ann Regan, Associate Professor, The Catholic University of America National Catholic School of Social Service\n Prof. Alice K. Butterfield, University of Illinois at Chicago, USA\n Dr Robert Barney, Associate Professor, Stockton University, USA,\n Dr Diane Falk, Stockton University, USA"),
              EventCard(no: 19, program: "Concluding the session by Moderator", venue: "RBS Auditorium", time: "15.30 - 15.40"),
              EventCard(no: 20, program: "Tea and Snacks", time: "15.40 - 16.00"),
              EventCard(no: 21, program: "Panel Discussion 1", venue: "RBS Auditorium", time: "16.00 - 17.00", content: "MODERATOR: Dr Kiran Thampi, Head, Department of Social Work, RCSS (Autonomous)\nSPEAKERS: Dr Denise Burnette, PhD: Virginia Commonwealth University (Richmond VA, USA)\nDr Asha Banu Soletti, PhD. Tata Institute of Social Sciences (Mumbai, India)\nDr Smitha Nair\nDipak Rawate, Pragati\n Pravin Yadav, Pragati\nTHEME: Pragati: A sustainable university community model for promoting long-term engagement, empowerment, and efficacy"),
              EventCard(no: 22, program: "Panel Discussion 2", venue: "RBS Auditorium", time: "16.00 - 17.00", content: "MODERATOR: Rev Dr Shinto Joseph, Department of Social Work, RCSS (Autonomous)\nSPEAKERS: Dr Sumeet Jain, Senior Lecturer, University of Edinburg\nDr Sachin Barbde, Mental Health Program Manager, Ekjut\nJasmine Kalha, Programme Manager, Centre for Mental Health Law and Policy, Pune\n Manoj Kumar, Director, Mental Health Action Trust, Kerala\n Pooja Pillai, Durans Mental Health Program, Uttarakhand\nTHEME: Recovery and Mental Health in India: Community based Responses"),
              EventCard(no: 23, program: "General Body (For ICSD Members)", venue: "Samanwaya(5th Floor)", time: "17.00-18.00"),
              EventCard(no: 24, program: "Campus Tour(For other delegates)", venue: "Samanwaya(5th Floor)", time: "17.00-18.00"),
              EventCard(no: 25, program: "Cultural Night & ICSD Presidential Dinner", venue: "RBS Auditorium", time: "18.00-19.00"),
              EventCard(no: 26, program: "Dinner and ICSD Auction (ICSD Award Ceremony)", venue: "RBS Auditorium", time: "18.00-19.00"),






              
            ],
          )
        ],
      ),
    );
  }
}
