import 'package:flutter/material.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {

  List<Map>things_to_do = [
    {'tense': 'Lift to wake', 'isChecked': false},
    {'tense': 'Double tap to turn on screen', 'isChecked': false},
    {'tense': 'Double tap to turn off screen', 'isChecked': false},
    {'tense': 'Keep screen on while viewing', 'isChecked': false},
    {'tense': 'Alert when phone is picked up', 'isChecked': false},
    {'tense': 'Finger sensor gestures', 'isChecked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body:  Column(
          children: things_to_do.map((e) {
            return CheckboxListTile(
                value: e["isChecked"],
                title: Text(e["tense"]),
                onChanged: (newValue) {
                  setState(() {
                    e["isChecked"] = newValue;
                  });
                });
          }).toList()),
    );
  }
}
