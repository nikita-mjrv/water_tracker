import 'package:flutter/material.dart';

class ReminderToggle extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  ReminderToggle({
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _ReminderToggleState createState() => _ReminderToggleState();
}

class _ReminderToggleState extends State<ReminderToggle> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (newValue) {
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
    );
  }
}
