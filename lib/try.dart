import 'package:flutter/material.dart';


class  Try extends StatefulWidget {
  const Try ({Key? key}) : super(key: key);
  @override
  State<Try> createstate () => _Try();

  @override
  State<StatefulWidget> createState() {
    return _Try();
  }

}

class _Try extends State<Try>{





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
            padding: EdgeInsets.fromLTRB(10,0, 200, 60),

          ),

        ),

      ),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(5),
          child : Column(
         crossAxisAlignment: CrossAxisAlignment.start ,

            children: [

            IconButton(

              onPressed: () => Navigator.of(context).pop(),
              padding: EdgeInsets.fromLTRB(150, 2, 200, 65),

              icon: Icon(Icons.account_circle, color: Colors.blueGrey, size: 92,),
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
                    width: 207,
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
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => registerSuc()));

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
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
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
