import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mushaf_app/DetailSurahScreen.dart';
import 'package:quran/quran.dart' as quran;

class SurahIndexScreen extends StatefulWidget {
  const SurahIndexScreen({super.key});

  @override
  State<SurahIndexScreen> createState() => _SurahIndexScreenState();
}

class _SurahIndexScreenState extends State<SurahIndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 250, 248),
      appBar: AppBar(
        backgroundColor: Colors.teal[900],

        title: Center(
          child: Text(
            "القرآن الكريم",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "ruqabold",
              fontSize: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white),
            ),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: 114,
        itemBuilder: (context, index) {
          return 
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailSurahScreen(index + 1),
                  ),
                );
              },

              leading: CircleAvatar(child: Text("${index + 1}")),

              title: Text(
                "${quran.getSurahNameArabic(index + 1)} | ${quran.getSurahName(index + 1)}",
                style: GoogleFonts.amiri(),
              ),

              subtitle: Text(quran.getSurahNameEnglish(index + 1)),
              trailing: Column(
                children: [
                  quran.getPlaceOfRevelation(index + 1) == "Makkah"
                      ? Image.asset(
                        "assets/images/kaba.jpg",
                        width: 25,
                        height: 25,
                      )
                      : Image.asset(
                        "assets/images/madina.jpg",
                        width: 25,
                        height: 25,
                      ),
                  SizedBox(height: 4),
                  Text(
                    "آياتها: ${quran.getVerseCount(index + 1).toString()}",
                    style: GoogleFonts.amiri(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
