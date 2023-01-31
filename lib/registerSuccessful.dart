import 'package:flutter/material.dart';


class registerSuc extends StatefulWidget {
  const registerSuc({Key? key}) : super(key: key);

  @override
  State<registerSuc> createstate () => _registerSuc();


  @override
  State<StatefulWidget> createState() {
    return _registerSuc();
  }
}

class _registerSuc extends State<registerSuc>{
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
         height: 50,
       ),
         Text(
           'Register was Successful.',
           style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, ),
         ),



        ],


      ),



    );

  }


}
