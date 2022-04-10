import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  /*datatype
    String name = "abhay";
    double num = 5.8;

    const - value can't be change

    ${varname} -> string interpolation
    use {} for more than one value

    // we need to use final keyword
    */
    final int day = 30;
    final String name = "Abhay";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text("Hii $name let's learn flutter in $day days"),
        )),
    );
  }
}