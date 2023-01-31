import 'package:flutter/material.dart';
import 'package:belkhedma/signIn.dart';

class CheckPass extends StatefulWidget {
  const CheckPass({Key? key}) : super(key: key);

  @override
  State<CheckPass> createstate () => _CheckPass();


  @override
  State<StatefulWidget> createState() {
    return _CheckPass();
  }
}

class _CheckPass extends State<CheckPass>{
  Widget build (BuildContext context){

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35), // here the desired height
        child: AppBar(
          backgroundColor: Colors.black,

        ),
      ),

      body: Column(

        children: [

          SizedBox(height: 200),

          IconButton(
            padding: EdgeInsets.fromLTRB(10, 40, 150, 120),
            icon: Icon(Icons.check_circle, color: Colors.black, size: 160,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Text(
            'Password Reset',
            style: TextStyle(fontSize: 18,  ),
          ),
          Text(
            'Password reset successfully',
            style: TextStyle(fontSize: 15,  color: Colors.blueGrey ),
          ),

          SizedBox(
            width: double.infinity,
            height: 90,
          ),
          GestureDetector(
            onTap: () {

              Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => SignIn()));

            },
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,

              ),
              child: Center(
                child: Text('Back to login',style: TextStyle(color:Colors.white, fontSize: 16.0),

                ),

              ),



            ),
          ),

        ],


      ),



    );

  }


}
