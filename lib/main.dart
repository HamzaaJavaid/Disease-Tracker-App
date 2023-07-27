import 'package:covid_tracker/Main%20Dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:typewritertext/typewritertext.dart';

void main(){
  runApp(MaterialApp(home: DashboardScreen(),));
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
            ).animate().fadeIn(duration: 1000.ms).scale(duration: 1000.ms),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
        TypeWriterText(
          text: Text('Disease Tracker',style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold,
          ),),
          duration: Duration(milliseconds: 300,),
        )
          ],
        )
      ),
    );
  }
}
