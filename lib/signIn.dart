import 'package:flutter/material.dart';
import 'package:belkhedma/register.dart';
import 'package:belkhedma/verfiyNum.dart';

class  SignIn extends StatefulWidget {
  const SignIn ({Key? key}) : super(key: key);
  @override
  State<SignIn> createstate () => _signInState();

  @override
  State<StatefulWidget> createState() {
   return _signInState();
  }

}

class _signInState extends State<SignIn>{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(24), // here the desired height
        child: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
            // Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => registerSuc()));

            // alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(10,0, 200, 60),

          ),

        ),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        //function will give u dynamic size up to the screen
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),

              Image(
            image: AssetImage('images/NUAF.png'),
          ),
              // SizedBox(height: 5),
              const Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 40),

              ),
              const Text(
                'Please login',
                style: TextStyle(fontSize: 20),

              ),



              //the offset between the elemnt and save area
              SizedBox(height: 90),
              TextField(

                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(
                  hintText: 'Email Address ',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),
              SizedBox(height: 10),

              TextField(
                obscureText: true,

                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: 'Password ',

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),

              ),


              SizedBox(height: 50),

              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,

                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(color:Colors.white, fontSize: 16.0),

                    ),

                  ),

                ),
              ),

              SizedBox(height: 10),

              // SizedBox(height: 7),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                        text: 'Doesnt have an account?',
                        style: TextStyle(
                            color: Colors.blueGrey
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
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

              // SizedBox(height: 5),

              TextButton(

                child: Text(


                  "Forget password?",
                  style: TextStyle(

                    color: Colors.black,
                    decoration: TextDecoration.underline,


                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => Vertfiy()));

                },

              ),




            ],
          ),
        ),

      ),
      ),
    );
  }

}
