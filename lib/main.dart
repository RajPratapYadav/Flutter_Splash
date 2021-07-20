import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=>_SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), (){
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icon.png',height: 400, width: 400,),
            SizedBox(height: 20,),
            SpinKitWanderingCubes(color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget{
 @override
 _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.brown[700],
      title: Text("Splash Screen"),
      ),
      body: Container(
        child: Center(
          child: Text("Welcome To  Home Page"),
        ),
      ),
    );
  }
}
