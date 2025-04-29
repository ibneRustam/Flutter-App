import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mushaf_app/AsmaOMuhammadSallalLahuAlaheWasallam.dart';
import 'package:mushaf_app/AsmaulHusnaScreen.dart';
import 'package:mushaf_app/AudioSurahScreen.dart';
import 'package:mushaf_app/surahIndexScreen.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({super.key});

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(221, 250, 248, 1),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AsmaUlHusna()),
                );
              },

              child: Text(
                " أسماء الحسنى | Asma-ul-Husna ",
                style: GoogleFonts.amiri(color: Colors.white, fontSize: 16),
              ),
            ),

            SizedBox(height: 7),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurahIndexScreen()),
                );
              },
              child: Text(
                "القراءة | Read Quran",

                style: GoogleFonts.amiri(color: Colors.white, fontSize: 16),
              ),
            ),

            SizedBox(height: 7),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioSurahScreen()),
                );
              },
              child: Text(
                "التلاوة | Listen Quran ",
                style: GoogleFonts.amiri(color: Colors.white, fontSize: 16),
              ),
            ),

            SizedBox(height: 7),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AsmaOMuhammadSallalLahuAlaheWasallam()),
                );
              },

              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                   
                    Text(
                      " أسماء محمد",
                      style: GoogleFonts.amiri(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ ",
                      style: GoogleFonts.amiri(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      " | Asma O Muhammad (P.B.U.H)",
                      style: GoogleFonts.amiri(
                        
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
