//  ignore: file_names

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable
class DetailAudioscreen extends StatefulWidget {
  var surahNum;
  DetailAudioscreen(this.surahNum, {super.key});

  @override
  State<DetailAudioscreen> createState() => _DetailAudioscreenState();
}

class _DetailAudioscreenState extends State<DetailAudioscreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  IconData playpausebutton = Icons.play_circle_fill_rounded;
  bool isplaying = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> togglebtn() async {
    try {
      final audioUrl = await quran.getAudioURLBySurah(widget.surahNum);
      audioPlayer.setUrl(audioUrl);

      if (isplaying) {
       audioPlayer.play();

        setState(() {
          isplaying = false;
          playpausebutton = Icons.pause_circle_filled_rounded;
        });
      } else {
        audioPlayer.pause();

        setState(() {
          isplaying = true;
          playpausebutton = Icons.play_circle_filled_rounded;
        });
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 250, 248),
      appBar:
     AppBar (backgroundColor: Colors.teal[900],
     title: Center(
       child: Text(
              "بصوت الشيخ مشاري بن راشد العفاسي",
              style: TextStyle(
                fontFamily: "ruqabold",
                color: Colors.white,
                fontSize: 15, 
              ),
            ),
     ),),


      body:
       Center(
        child: Column(
          children:
          
           [Text("سورة${quran.getSurahNameArabic(widget.surahNum)}",
              style: TextStyle(
                fontFamily: "ruqabold",
                color: Colors.teal[900],
                fontSize: 22, 
              )
          ),
            SizedBox(height: 20),
             CircleAvatar(
              radius: 80,
                  backgroundImage: AssetImage("assets/images/affasii.jpg" ),
                ),
                
              
            
            SizedBox(height: 30),
           
              
              Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back, color: Colors.teal)),
               IconButton(
                    onPressed: togglebtn,
                    

                    icon: Icon(color: Colors.teal[900], playpausebutton,),
                   
                    
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward , color: Colors.teal,)),
                
                ],),
          ],
        ),
      ),
    );
  }
}
