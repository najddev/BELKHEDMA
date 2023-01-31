import 'package:flutter/material.dart';
import 'package:belkhedma/checkPass.dart';


class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  State<ResetPass> createstate () => _ResetPass();


  @override
  State<StatefulWidget> createState() {
    return _ResetPass();
  }
}

class _ResetPass extends State<ResetPass>{
  Widget build (BuildContext context){

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35), // here the desired height
        child: AppBar(
          backgroundColor: Colors.black,
          title: Text(' Reset Password '),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),

        ),

      ),

      body: Column(
        children: [
          SizedBox(
            width: double.minPositive,
            height: 150,
          ),
          Text(
            'Enter your new password ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, ),
          ),


          SizedBox(height: 100),

          TextField(
            decoration: InputDecoration(
              hintText: 'New Password ',



              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                // borderRadius: BorderRadius.circular(50.0),
              ),
            ),

          ),

          SizedBox(height: 10),

          TextField(
            decoration: InputDecoration(
              hintText: 'Repeat Password ',



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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckPass()));

            },
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,

              ),
              child: Center(
                child: Text('Reset Password',style: TextStyle(color:Colors.white, fontSize: 16.0),

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
                    text: 'Having an issue?',
                    style: TextStyle(
                        color: Colors.blueGrey
                    ),
                    children: [
                      TextSpan(
                        text: "Contact help",
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
