import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonJoiinUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        onPressed: () {
          Navigator.pushNamed(context, "loginScreen");
        },
        child: Text("JOIN US"));
  }
}
