import 'package:belkhedma/main.dart';
import 'package:belkhedma/signIn.dart';
import 'package:flutter/material.dart';
import 'package:belkhedma/register.dart';
import 'package:belkhedma/VerifyReg.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _Splash();
  }
  // const Splash ({Key? key}) : super(key: key);
}

class _Splash extends State<Splash>{
  bool animate = false;

  @override
    void initState(){
      startAnimation();
    }
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
          backgroundColor: Colors.black45,
          body : SafeArea(

            child: Stack(
              children: [

                AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                    top: animate ? 0 : -30,
                    bottom : 350,
                    right: 100,
                    left: 100,

                    child: Image(
                      image: AssetImage('images/NUAF.png'),
                    )
                ),


              ],
            ),
          )
      );

    }



    Future startAnimation() async {
      await Future.delayed(Duration(milliseconds: 1200));
      setState(() => animate = true );
      await Future.delayed(Duration(milliseconds: 1200));
      Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => Register()));
    }
  }
  
  


