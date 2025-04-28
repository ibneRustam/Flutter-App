import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable
class DetailSurahScreen extends StatefulWidget {
  var surahNum;
  DetailSurahScreen(this.surahNum, {super.key});

  @override
  State<DetailSurahScreen> createState() => _DetailSurahScreenState();
}

class _DetailSurahScreenState extends State<DetailSurahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          "سورة ${quran.getSurahNameArabic(widget.surahNum)}${quran.getPlaceOfRevelation(widget.surahNum) == "Makkah" ? " مكية" : " مدنية"}",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "ruqabold",
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body:
      
       Container(
        color: const Color.fromARGB(255, 221, 250, 248),
         child: SafeArea(
          
          child: Padding(
            padding: EdgeInsets.all(15.0),
            
            child: ListView.builder(
            
              itemCount: quran.getVerseCount(widget.surahNum),
              itemBuilder: (context, index) {
                return
                Card(child:  ListTile(
                  title:
                   Text(
                    quran.getVerse(
                      widget.surahNum,
                      index + 1,
                      verseEndSymbol: true,
                    ),
                    textAlign: TextAlign.right,
                    style: GoogleFonts.amiri(),
                  ),
                  
         
                  subtitle: SizedBox(
                    width: double.infinity,
         
                    child: 
                    Text(
                      quran.getVerseTranslation(
                        widget.surahNum,
                        index + 1,
                        verseEndSymbol: true,
                        translation: quran.Translation.urdu,
                      ),
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontFamily: "jameel"),
                    ),
                  ),
                ),
                );
              },
            ),
          ),
               ),
       ),
    );
  }
}
