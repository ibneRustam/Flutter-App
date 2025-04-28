// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mushaf_app/DetailAudioScreen.dart';
import 'package:quran/quran.dart' as quran;

class AudioSurahScreen extends StatefulWidget {
  const AudioSurahScreen({super.key});

  @override
  State<AudioSurahScreen> createState() => _AudioSurahScreenState();
}

class _AudioSurahScreenState extends State<AudioSurahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 250, 248),
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: SizedBox(
          width: double.infinity,
          height: 100,
          child: Center(
              child: Text(
                "تلاوة القرآن الكريم",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "ruqabold",
                  fontSize: 22,
                ),
              ),
            ),
          
        ),
      ),

      body: ListView.builder(
        itemCount: 114,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailAudioscreen(index + 1),
                ),
              );
            },
            leading: CircleAvatar(child: Text("${index + 1}")),

            title: Text(
              "${quran.getSurahNameArabic(index + 1)} | ${quran.getSurahName(index + 1)}",
              style: GoogleFonts.amiri(),
            ),
            subtitle: Text(
              "الشيخ مشاري العفاسي",
              style: GoogleFonts.amiri(),
              selectionColor: Colors.teal[500],
            ),
            trailing: Column(
              children: [
                quran.getPlaceOfRevelation(index + 1) == "Makkah"
                    ? Text("مَكِّيَّة", style: GoogleFonts.amiri(fontSize: 13))
                    : Text(
                      "مَدَنِيَّة",
                      style: GoogleFonts.amiri(fontSize: 13),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                Text("آياتها: ${quran.getVerseCount(index + 1).toString()}",style: GoogleFonts.amiri(),),
              ],
            ),
          );
        },
      ),
    );
  }
}

