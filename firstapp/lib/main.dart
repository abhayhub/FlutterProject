import 'package:firstapp/Pages/home_page.dart';
import 'package:firstapp/Pages/login.dart';
import 'package:firstapp/Pages/loginorsignup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  // Constructur
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /*Context tell us about the location of 
    widget and component inside a Trees. ex of tree -->
    MyApp() -> Homepage() -> materialApp() -> scaffold()
    */

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //implement dark theme
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),


      home : Scaffold(
          appBar: AppBar(
            title: const Text("This is my first App"),
          ),

          body: LoginandSignup(),
          drawer:  Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Text("Course Content",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                ),
                ListTile(
                  title: Text("Flutter Installation"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Data Type & Scaffold"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Function & Classes"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Routes ,Theme & Text"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("All Project's"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),

        /* Routes use for page navigation

         Login() is object ....
          then how we can differenciate between function and class 
         class Name follow CamelCase
         function name are written in lowercase */
        /*routes: {
          "/loginpage":((context) => Login())//object 
        },*/
    );
  }
  }
