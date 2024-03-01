import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _targetWater = 2000; // Значение по умолчанию для целевого объема воды

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings', style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/kup.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Set your daily water intake goal:',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              Slider(
                min: 500,
                max: 5000,
                divisions: 9,
                value: _targetWater,
                onChanged: (newValue) {
                  setState(() {
                    _targetWater = newValue;
                  });
                },
                label: _targetWater.round().toString() + ' ml',
              ),
              SizedBox(height: 20.0),
              Text(
                'Set reminder intervals:',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              // Здесь можно добавить виджеты для настройки временных интервалов напоминаний
              // Например, TimePicker, CheckboxListTile и т.д.
            ],
          ),
        ),
      ),
    );
  }
}
