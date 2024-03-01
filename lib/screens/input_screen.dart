import 'package:flutter/material.dart';
import 'package:water_app/screens/settings_screen.dart';
import 'package:water_app/screens/statistics_screen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController _controller = TextEditingController();
  int _waterAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Water Tracker', style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/kup.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter amount of water consumed:',
                style: TextStyle(fontSize: 23.0, color: Colors.white),
              ),
              SizedBox(height: 50.0),
              SizedBox(
                width: 200.0,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'ml',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _waterAmount = int.tryParse(_controller.text) ?? 0;
                        _controller.clear();
                      });
                    },
                    child: Text('Add Water'),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      _controller.clear();
                    },
                    child: Text('Clear'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Total water consumed: $_waterAmount ml',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _waterAmount = 0;
                  });
                },
                tooltip: 'Clear Water Amount',
                child: Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
            tooltip: 'Settings',
            child: Icon(Icons.settings),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StatisticsScreen()),
              );
            },
            tooltip: 'Statistics',
            child: Icon(Icons.insert_chart),
          ),
        ],
      ),
    );
  }
}
