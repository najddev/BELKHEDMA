import 'package:flutter/material.dart';
import 'package:belkhedma/signIn.dart';
import 'package:belkhedma/registerSuccessful.dart';
import 'package:belkhedma/register.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';



class  RegisterCd extends StatefulWidget {
  const RegisterCd ({Key? key}) : super(key: key);
  @override
  State<RegisterCd> createstate () => _RegisterCd();

  @override
  State<StatefulWidget> createState() {
    return _RegisterCd();
  }

}

class _RegisterCd extends State<RegisterCd>{

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
    if(myImg == null)  return ;

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
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
            // alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(10,0, 200, 50),

          ),

        ),

      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(5),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start ,

            children: [
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










              SizedBox(height: 3),

              Row(
                children: [
                  SizedBox( width: 3, ),

                  Container(
                    height: 70,
                    width: 190,


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
                    width: 220,
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
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: 'Phone Number ',

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
                  hintText: 'ID/IQAMA',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),



              SizedBox(height: 6),




              Text('NOTE',style: TextStyle(color:Colors.black, fontSize: 12.0, ),


              ),
              Text('THAT YOU WONT BE CONSIDRERED AS A COMPANY IF YOU DIDNT FILL THE FOLLOWING',style: TextStyle(color:Colors.blueGrey, fontSize: 12.0),


              ),

              SizedBox(height: 6),

              TextField(
                obscureText: true,


                decoration: InputDecoration(
                  hintText: 'Company name ',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),
              SizedBox(width: 3,height: 10),

              TextField(
                keyboardType: TextInputType.number,
                obscureText: true,

                decoration: InputDecoration(
                  hintText: 'Cummertial register ',

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
      ),

    );
  }

}
