import 'package:flutter/material.dart';
import 'package:belkhedma/VerifyReg.dart';
class Vertfiy extends StatefulWidget {
  const Vertfiy({Key? key}) : super(key: key);

  @override
  State<Vertfiy> createstate () => _Vertfiy();


  @override
  State<StatefulWidget> createState() {
    return _Vertfiy();
  }
}

class _Vertfiy extends State<Vertfiy>{
  Widget build (BuildContext context){

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35), // here the desired height
        child: AppBar(
          backgroundColor: Colors.black,
            title: Text(' Verify phone '),
          leading: IconButton(
            icon: Icon(Icons.cancel, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),

      ),

    ),

    body: Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
    ),
        Text(
          'Please enter your phone',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, ),
        ),

        Text(
          'number',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, ),
        ),
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        Text(
          'We will send the verfiction code ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.blueGrey,),
        ),
        Text(
          ' to your number',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.blueGrey,),
        ),
        SizedBox(height: 100),

        TextField(
          decoration: InputDecoration(
            hintText: 'Phone Number',

            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
              // borderRadius: BorderRadius.circular(50.0),
            ),
          ),

        ),


        SizedBox(height: 150),


        GestureDetector(
          onTap: () {

            Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => VertfiyR()));

          },
          child: Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,

            ),
            child: Center(
              child: Text('Send',style: TextStyle(color:Colors.white, fontSize: 16.0),

              ),

            ),

          ),
        ),



      ],


    ),

    );
  }


}
