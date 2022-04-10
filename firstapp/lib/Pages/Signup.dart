import 'dart:ui';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
    Signup({Key? key}) : super(key: key);

   var  nameController = TextEditingController();
   TextEditingController pswdController = TextEditingController();

   @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var child;
    return Scaffold(

      backgroundColor: Colors.white,
      
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30)),
            Image.asset("assets/images/sign_up.png",
            width: 300,),
      
            //Input Button
            Padding(
              padding:const EdgeInsets.only(left: 45),
            child :SizedBox(
              width: 250,
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.all(10),
                  border:OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15),)
                  ),
                  labelText: 'User Name',
                  hintText: 'Enter your Name'),
              ),
            ),
            ),
            
            //password input
            Padding(
              //padding: const EdgeInsets.all(15),
              padding:const EdgeInsets.only(top:15,left: 45),
              child: SizedBox(
                width: 250,
                
                height: 50,
                child: TextField(
                  //isObsecure : true,
                  style: TextStyle(
                    color: Colors.black),
                  controller: pswdController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    contentPadding: EdgeInsets.all(10),
                    border:OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15),)
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your Password'),
                ),
              ),
            ),

            
      
            // Button
            Padding(padding: EdgeInsets.only(top:20,left: 100)),
              ElevatedButton(
                onPressed: (){
                  showDialog(context: context,
                   builder: (context) => AlertDialog(
                     title: Text("Notice"),
                     content: Text("heyy "+nameController.text +" FirstApp is down for maintenance. "
                     "In the mean time why don't you go outside and Play some Games."),
                   actions: [
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text("Cancel")),
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text("Ok")),
                   ],
                   ),
                   
                   );
                }, 
                child: const Text("Signup")),
      
            Text("Login Securely",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),)
        ],
        ),
      ),);
  }
}