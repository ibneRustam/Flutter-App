import 'package:flutter/material.dart';

class AsmaUlHusna extends StatefulWidget {
  const AsmaUlHusna({super.key});

  @override
  State<AsmaUlHusna> createState() => _AsmaUlHusnaState();
}

class _AsmaUlHusnaState extends State<AsmaUlHusna> {
  var asmaulHusna = [
  "ٱلرَّحْمَٰنُ",
  "ٱلرَّحِيمُ",
  "ٱلْمَلِكُ",
  "ٱلْقُدُّوسُ",
  "ٱلسَّلَامُ",
  "ٱلْمُؤْمِنُ",
  "ٱلْمُهَيْمِنُ",
  "ٱلْعَزِيزُ",
  "ٱلْجَبَّارُ",
  "ٱلْمُتَكَبِّرُ",
  "ٱلْخَالِقُ",
  "ٱلْبَارِئُ",
  "ٱلْمُصَوِّرُ",
  "ٱلْغَفَّارُ",
  "ٱلْقَهَّارُ",
  "ٱلْوَهَّابُ",
  "ٱلرَّزَّاقُ",
  "ٱلْفَتَّاحُ",
  "ٱلْعَلِيمُ",
  "ٱلْقَابِضُ",
  "ٱلْبَاسِطُ",
  "ٱلْخَافِضُ",
  "ٱلرَّافِعُ",
  "ٱلْمُعِزُّ",
  "ٱلْمُذِلُّ",
  "ٱلسَّمِيعُ",
  "ٱلْبَصِيرُ",
  "ٱلْحَكَمُ",
  "ٱلْعَدْلُ",
  "ٱللَّطِيفُ",
  "ٱلْخَبِيرُ",
  "ٱلْحَلِيمُ",
  "ٱلْعَظِيمُ",
  "ٱلْغَفُورُ",
  "ٱلشَّكُورُ",
  "ٱلْعَلِيُّ",
  "ٱلْكَبِيرُ",
  "ٱلْحَفِيظُ",
  "ٱلْمُقِيتُ",
  "ٱلْحَسِيبُ",
  "ٱلْجَلِيلُ",
  "ٱلْكَرِيمُ",
  "ٱلرَّقِيبُ",
  "ٱلْمُجِيبُ",
  "ٱلْوَاسِعُ",
  "ٱلْحَكِيمُ",
  "ٱلْوَدُودُ",
  "ٱلْمَجِيدُ",
  "ٱلْبَاعِثُ",
  "ٱلشَّهِيدُ",
  "ٱلْحَقُّ",
  "ٱلْوَكِيلُ",
  "ٱلْقَوِيُّ",
  "ٱلْمَتِينُ",
  "ٱلْوَلِيُّ",
  "ٱلْحَمِيدُ",
  "ٱلْمُحْصِي",
  "ٱلْمُبْدِئُ",
  "ٱلْمُعِيدُ",
  "ٱلْمُحْيِي",
  "ٱلْمُمِيتُ",
  "ٱلْحَيُّ",
  "ٱلْقَيُّومُ",
  "ٱلْوَاجِدُ",
  "ٱلْمَاجِدُ",
  "ٱلْوَاحِدُ",
  "ٱلْأَحَدُ",
  "ٱلصَّمَدُ",
  "ٱلْقَادِرُ",
  "ٱلْمُقْتَدِرُ",
  "ٱلْمُقَدِّمُ",
  "ٱلْمُؤَخِّرُ",
  "ٱلْأَوَّلُ",
  "ٱلْآخِرُ",
  "ٱلظَّاهِرُ",
  "ٱلْبَاطِنُ",
  "ٱلْوَالِي",
  "ٱلْمُتَعَالِي",
  "ٱلْبَرُّ",
  "ٱلتَّوَّابُ",
  "ٱلْمُنْتَقِمُ",
  "ٱلْعَفُوُّ",
  "ٱلرَّؤُوفُ",
  "مَالِكُ ٱلْمُلْكِ",
  "ذُو ٱلْجَلَالِ وَٱلْإِكْرَامِ",
  "ٱلْمُقْسِطُ",
  "ٱلْجَامِعُ",
  "ٱلْغَنِيُّ",
  "ٱلْمُغْنِيُّ",
  "ٱلْمَانِعُ",
  "ٱلضَّارُّ",
  "ٱلنَّافِعُ",
  "ٱلنُّورُ",
  "ٱلْهَادِي",
  "ٱلْبَدِيعُ",
  "ٱلْبَاقِي",
  "ٱلْوَارِثُ",
  "ٱلرَّشِيدُ",
  "ٱلصَّبُورُ"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 250, 248),
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Center(
          child: Text(
            "الأسماء الحسنى",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "ruqabold",
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(12),
            color: Colors.teal[800],
            ),
            width: 250,
            height: 55,
            child: Center(
              child: Text(
                "هو اللّٰه الذي لا إلٰه إلاَّ هو",
                style: TextStyle(
                  fontFamily: "sulus",
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                  
                ),
              
              ),
            ),
          ),
          
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(12),
              itemCount: asmaulHusna.length,
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
                  elevation: 4, 
                  child: Center(
                    child: Text(
                      asmaulHusna[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "sulus",
                        fontSize: 25,
                        
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
