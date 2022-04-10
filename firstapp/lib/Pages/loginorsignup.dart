
import 'package:firstapp/Pages/Signup.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Pages/login.dart';

class LoginandSignup extends StatelessWidget {
  const LoginandSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
          body: Column(
            children: [
              Image.asset("assets/images/secure_login.png"),

              //Login Button
              Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(

                //border styling
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6),
                  )
                ),

                onPressed: (){
                  Navigator.push(context,
    MaterialPageRoute(builder: (context) =>  Login()));
                },
                child: Text("Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),)),

              //Signup button
              ElevatedButton(
                //Border radius 
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6),
                  )
                ),
                onPressed: (){
                  Navigator.push(context,
    MaterialPageRoute(builder: (context) =>  Signup()));
                },
                child: Text("Signup",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),)),


            ],
          ),
          ),
    );
}
}