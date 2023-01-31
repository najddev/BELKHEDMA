import 'package:flutter/material.dart';
import 'package:belkhedma/registerCd.dart';
import 'package:belkhedma/registeruser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createstate () => _Register();


  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register>{
  Widget build (BuildContext context){

    AddData() async {
      CollectionReference userref =
      FirebaseFirestore.instance.collection('Users');

      userref.add({
      "Gender" : "MALE",
      });
    }


    // getData() async {
    //  CollectionReference userref = FirebaseFirestore.instance.collection("Users");
    //  QuerySnapshot qs = await userref.get();
    //
    //  List<QuerySnapshot> listDocs  = qs.docs;
    //  listDocs.forEach((element) {
    //    print(element.data());
    //  });
    //
    //
    //   }

     void initState(){
       AddData();
      super.initState();
     }


    return Scaffold(
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(35), // here the desired height
    child: AppBar(
    backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
        onPressed: () => AddData(),
      ),
      centerTitle: true,

    ),
    ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60, ),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => RegisterUser()));


              },
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.black,



                ),
                child: Center(
                  child: Text('Register as an user',style: TextStyle(color:Colors.white, fontSize: 23, fontWeight: FontWeight.w700),

                ),

                ),

              ),
            ),

        SizedBox(height: 60, ),

        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => RegisterCd()));

          },
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: Colors.black,



            ),
            padding: EdgeInsets.fromLTRB(20, 15, 30, 20),
            child: Center(
              child: Text('Register as Service Provider',style: TextStyle(color:Colors.white, fontSize: 23, fontWeight: FontWeight.w700),

              ),

            ),

          ),


        ),




          ],

      ),
    ),
    );
  }


}
