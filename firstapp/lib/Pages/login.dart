import 'dart:ui';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
    Login({Key? key}) : super(key: key);

   var  nameController = TextEditingController();
   TextEditingController pswdController = TextEditingController();

   @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(25)),
            Image.asset("assets/images/Sign_in.png"),
      
            //Input Button
            Padding(padding: EdgeInsets.all(15)),
            SizedBox(
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
            
            
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                child: const Text("Login")),
      
            Text("Login Securely",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),)
        ]),
      ),);
  }
}