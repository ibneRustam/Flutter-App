import 'package:flutter/material.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatefulWidget {
  const TaskApp({super.key});

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
   
    (debugShowCheckedModeBanner: false,
      home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: 100,
            child: ElevatedButton( 
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color.fromARGB(255, 7, 31, 66),
                
              ),
              onPressed: () {
                Navigator.push(
                  
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text("Well Come To NAVTCC", style: TextStyle(color: Colors.white,fontSize: 50, fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var fruits = ["Apple", "Mango", "Banana", "Peach", "Watermelon"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 31, 66),
        title: Text("Fruits Names", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
      body:
      
       ListView.builder(
        itemCount: 5,
        
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text("$index... ${fruits[index]}"),
          );
        },
      ),
    );
  }
}
