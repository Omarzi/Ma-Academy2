import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FlotaingactionButton extends StatefulWidget {
  @override
  _FlotaingActionButtonState createState() => _FlotaingActionButtonState();
}

class _FlotaingActionButtonState extends State<FlotaingactionButton>
    with TickerProviderStateMixin {
  var mini = false;
  var selectedfABLocation = FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: selectedfABLocation,
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        spacing: 3,
        mini: mini,
        childPadding: const EdgeInsets.all(5),
        spaceBetweenChildren: 4,
        shape: StadiumBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.brush),
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(Icons.margin),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            visible: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
