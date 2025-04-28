

import 'package:flutter/material.dart';

class AsmaOMuhammadSallalLahuAlaheWasallam extends StatefulWidget {
  const AsmaOMuhammadSallalLahuAlaheWasallam({super.key});

  @override
  State<AsmaOMuhammadSallalLahuAlaheWasallam> createState() => _AsmaOMuhammadSallalLahuAlaheWasallamState();
}

class _AsmaOMuhammadSallalLahuAlaheWasallamState extends State<AsmaOMuhammadSallalLahuAlaheWasallam>
 {

  var AsmaunNabiSallalLahuAlaheWasallam =[
  "مُحَمَّدٌ ﷺ",
  "أَحْمَدُ ﷺ",
  "الْمُصْطَفَى ﷺ",
  "الْمُجْتَبَى ﷺ",
  "الرَّسُولُ ﷺ",
  "النَّبِيُّ ﷺ",
  "الطَّاهِرُ ﷺ",
  "الْأَمِينُ ﷺ",
  "الْمُزَّمِّلُ ﷺ",
  "الْمُدَّثِّرُ ﷺ",
  "الشَّافِعُ ﷺ",
  "الْمَشْفُوعُ ﷺ",
  "الْمُبَارَكُ ﷺ",
  "الْمَاحِي ﷺ",
  "الْعَاقِبُ ﷺ",
  "الْحَاشِرُ ﷺ",
  "نَبِيُّ التَّوْبَةِ ﷺ",
  "نَبِيُّ الرَّحْمَةِ ﷺ",
  "نَبِيُّ الْمَلْحَمَةِ ﷺ",
  "رَسُولُ الرَّحْمَةِ ﷺ",
  "رَسُولُ الْمَلْحَمَةِ ﷺ",
  "نَبِيُّ الْهُدَى ﷺ",
  "سَيِّدُ الْمُرْسَلِينَ ﷺ",
  "سَيِّدُ النَّاسِ ﷺ",
  "سَيِّدُ الْخَلْقِ ﷺ",
  "خَاتَمُ النَّبِيِّينَ ﷺ",
  "إِمَامُ الْمُتَّقِينَ ﷺ",
  "إِمَامُ الْمُرْسَلِينَ ﷺ",
  "خَاتَمُ الرُّسُلِ ﷺ",
  "رَسُولُ الثَّقَلَيْنِ ﷺ",
  "رَسُولُ اللَّهِ ﷺ",
  "رَسُولُ الرَّحْمَةِ ﷺ",
  "رَسُولُ الْمَلَاحِمِ ﷺ",
  "النَّذِيرُ ﷺ",
  "الْبَشِيرُ ﷺ",
  "السِّرَاجُ الْمُنِيرُ ﷺ",
  "السِّرَاجُ الْمُضِيءُ ﷺ",
  "الْمُبَشِّرُ ﷺ",
  "النَّذِيرُ الْمُنْذِرُ ﷺ",
  "الضَّحَّاكُ ﷺ",
  "الْقَاتِلُ ﷺ",
  "الرُّوحُ ﷺ",
  "الْحَقُّ ﷺ",
  "الصَّادِقُ ﷺ",
  "الصِّدِّيقُ ﷺ",
  "الفَاتِحُ ﷺ",
  "الأُمِّيُّ ﷺ",
  "التَّقِيُّ ﷺ",
  "النَّقِيُّ ﷺ",
  "الْمُتَوَكِّلُ ﷺ",
  "الرَّؤُوفُ ﷺ",
  "الرَّحِيمُ ﷺ",
  "الخَاتِمُ ﷺ",
  "القَائِدُ ﷺ",
  "الشَّفِيعُ ﷺ",
  "الْمُشَفَّعُ ﷺ",
  "الصَّادِعُ ﷺ",
  "الْمُبَيِّنُ ﷺ",
  "الْمُبِينُ ﷺ",
  "الْمُؤَيَّدُ ﷺ",
  "النَّاصِرُ ﷺ",
  "الْمُعَزِّرُ ﷺ",
  "الْمُنْقِذُ ﷺ",
  "الْمُوَفَّقُ ﷺ",
  "الْمُرْشِدُ ﷺ",
  "الْمُذَكِّرُ ﷺ",
  "الْهَادِي ﷺ",
  "الْمَسْعُودُ ﷺ",
  "الْمُسْتَغْفِرُ ﷺ",
  "الْمُجَاهِدُ ﷺ",
  "الْمُتَفَكِّرُ ﷺ",
  "الذَّاكِرُ ﷺ",
  "الصَّابِرُ ﷺ",
  "الشَّاكِرُ ﷺ",
  "الْخَائِفُ ﷺ",
  "الْمُخْبِتُ ﷺ",
  "الطَّائِعُ ﷺ",
  "الرَّاغِبُ ﷺ",
  "الزَّاهِدُ ﷺ",
  "الْوَاصِلُ ﷺ",
  "الْمُرَغِّبُ ﷺ",
  "الْمُرْهِبُ ﷺ",
  "الْمُحَذِّرُ ﷺ",
  "الْمُبَشِّرُ ﷺ",
  "السَّائِلُ ﷺ",
  "الْمُجِيبُ ﷺ",
  "الْقَاسِمُ ﷺ",
  "الْمُقَسِّمُ ﷺ",
  "الصَّادِعُ بِالْحَقِّ ﷺ",
  "المُخْلِصُ ﷺ",
  "العَفُوُّ ﷺ",
  "الرَّحْمَانُ ﷺ",
  "الرَّحِيمُ ﷺ",
  "الْمُؤْمِنُ ﷺ",
  "النُّورُ ﷺ",
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 250, 248),
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Center(
          child: Text(
            "الأسماء النبي صلى الله عليه وسلم",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "ruqabold",
              fontSize: 25,
            ),
          ),
          
        ),
      ),
      
      body:      
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(12),
                itemCount: AsmaunNabiSallalLahuAlaheWasallam.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.teal[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3, 
                    child: Center(
                      child: Text(
                        AsmaunNabiSallalLahuAlaheWasallam[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "sulus",
                          fontSize: 15,
                          
                          color: Colors.white,
                          
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
    
    );
      
    
  }
}
