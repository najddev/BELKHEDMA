import 'package:flutter/material.dart';
import 'package:belkhedma/register.dart';
import 'package:belkhedma/signIn.dart';
import 'package:belkhedma/registerSuccessful.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';



class  RegisterUser extends StatefulWidget {
  const RegisterUser ({Key? key}) : super(key: key);
  @override
  State<RegisterUser> createstate () => _RegisterUser();

  @override
  State<StatefulWidget> createState() {
    return _RegisterUser();
  }

}

class _RegisterUser extends State<RegisterUser>{


  File? img;


  Future phoneGalerry() async{
    final myImg = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(myImg == null)  return ;

    final imgTemp = File(myImg.path);
    setState(() {
      img = imgTemp;
    });

  }
  Future phoneCamera() async{
    final myImg = await ImagePicker().pickImage(source: ImageSource.camera);
    if(myImg == null)  return Icon(Icons.account_circle, color: Colors.blueGrey, size: 96,);

    final imgTemp = File(myImg.path);
    setState(() {
      img = imgTemp;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(22), // here the desired height
        child: AppBar(
          backgroundColor: Colors.black,
     

        ),

      ),
      body: SingleChildScrollView(


          child : Column(
            crossAxisAlignment: CrossAxisAlignment.center ,




            children: [

                  // Container(
                  //   height: 4,
                  //   width: 20 ,
                  //   margin: EdgeInsets.fromLTRB(89, 29, 90, 180),
                  //   // child:Icon(Icons.account_circle, color: Colors.blueGrey, size: 150,),
                  //   padding: EdgeInsets.,
                  // ),
              // SizedBox(height: 60, width: 90,),

              img == null ? Icon(Icons.account_circle, color: Colors.blueGrey, size: 150,) :CircleAvatar(
                backgroundImage: FileImage(img!),
                maxRadius: 50,
                minRadius: 50,

              ),
              // IconButton(onPressed: showDialog, icon: Icons.add_a_photo),

              Row(
              children: [


                     Icon(Icons.add_a_photo, color: Colors.blueGrey, size: 40,
                     ),
                   RawMaterialButton(onPressed:
                          () {
                        showDialog(context: context, builder: (BuildContext context){
                          return SimpleDialog( // <-- SEE HERE
                            title: const Text('select image'),
                            children:[
                              SimpleDialogOption(
                                onPressed: () {
                                  phoneGalerry();
                                },
                                child: const Text('Choose from gallery'),
                              ),
                              SimpleDialogOption(
onPressed: () {
  phoneCamera();
},
                                child: const Text('take a picture'),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Text("PIC UP");   },
                                child: const Text('remove picture'),
                              ),
                            ],
                          );


                        });

                      },                       //يمين
                       // padding: EdgeInsets.fromLTRB(0, 0, 60, 190),









      )
    ],

                  ),


              // IconButton(
              //
              //   onPressed: () => Navigator.of(context).pop(),
              //   padding: EdgeInsets.fromLTRB(170, 2, 200, 40),
              //
              //   icon: Icon(Icons.account_circle, color: Colors.blueGrey, size: 70,),
              // ),
              SizedBox(height: 20),
              // Icon(Icons.add_a_photo, color: Colors.blueGrey, size: 40, ),


              Row(
                children: [
                  SizedBox( width: 3,  ),

                  Container(
                    height: 70,
                    width: 203,


                    child : TextField(
                      keyboardType: TextInputType.name,

                      decoration: InputDecoration(
                        hintText: 'First Name ',



                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                          // borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),

                    ),

                  ),
                  SizedBox(height: 10, width: 4,),


                  Container(
                    height: 70,
                    width: 215,
                    child : TextField(
                      keyboardType: TextInputType.name,

                      decoration: InputDecoration(
                        hintText: 'Last Name ',

                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                          // borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),

                    ),
                  ),



                ],
              ),


              TextField(
                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(

                  hintText: 'Email Address',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),


              SizedBox(width: 3,height: 5),


              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),




              SizedBox(height: 5),

              TextField(
                obscureText: true,

                decoration: InputDecoration(
                  hintText: 'Confirm password',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),

              SizedBox(width: 3,height: 5),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Date of birth ',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),

              SizedBox(height: 5),

              TextField(
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: 'Phone Number',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),

              SizedBox(height: 5),

              TextField(
                keyboardType: TextInputType.name,

                decoration: InputDecoration(
                  hintText: 'Gender',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),

              SizedBox(height: 6),

              Text('Kindly Enter your driving license information',style: TextStyle(color:Colors.blueGrey, fontSize: 12.0),


              ),

              SizedBox(height: 6),

              TextField(
                obscureText: true,

                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: 'ID/IQAMA  ',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),
              SizedBox(width: 3,height: 10),

              TextField(
                keyboardType: TextInputType.datetime,

                decoration: InputDecoration(
                  hintText: 'EXP Date ',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => registerSuc()));

                },
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,

                  ),
                  child: Center(
                    child: Text('Register',style: TextStyle(color:Colors.white, fontSize: 16.0),

                    ),

                  ),

                ),
              ),


              SizedBox(height: 7),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: Colors.blueGrey
                        ),
                        children: [
                          TextSpan(
                            text: 'Login',
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





      ),

    );
  }

}
