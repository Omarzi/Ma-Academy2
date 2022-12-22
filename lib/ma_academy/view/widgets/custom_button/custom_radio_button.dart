import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { Male, Female }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.Male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Female'),
          leading: Radio<SingingCharacter>(
            activeColor: Color(0xFFff5757),
            value: SingingCharacter.Female,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Male'),
          leading: Radio<SingingCharacter>(
            activeColor: Color(0xFFff5757),
            value: SingingCharacter.Male,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
