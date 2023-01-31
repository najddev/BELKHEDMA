import 'package:flutter/material.dart';
import 'package:belkhedma/resetPass.dart';

class VertfiyR extends StatefulWidget {
  const VertfiyR({Key? key}) : super(key: key);

  @override
  State<VertfiyR> createstate () => _VertfiyR();


  @override
  State<StatefulWidget> createState() {
    return _VertfiyR();
  }
}

class _VertfiyR extends State<VertfiyR>{
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
            width: double.minPositive,
            height: 100,
          ),
          Text(
            'We sent you a code ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, ),
          ),

          Text(
            'to verify your account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, ),
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Text(
            'Sent to ******900',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.blueGrey,),
          ),
          SizedBox(height: 100),

          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Code',

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
              Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => ResetPass()));

            },
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,

              ),
              child: Center(
                child: Text('Sign Up',style: TextStyle(color:Colors.white, fontSize: 16.0),

                ),

              ),



            ),
          ),


          SizedBox(height: 100,
            width: double.infinity,
  ),

          GestureDetector(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
            },
            child: Center(
              child: Text.rich(
                TextSpan(
                    text: 'Does not recive the code?',
                    style: TextStyle(
                        color: Colors.blueGrey
                    ),
                    children: [
                      TextSpan(
                        text: 'Send a new code',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,

                        ),
                      ),
                    ]
                ),
              ),
            ),

          ),


        ],


      ),

    );
  }


}
