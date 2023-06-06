import 'package:flutter/material.dart';

class SelectableTextWidget extends StatefulWidget {
  final String text;

  SelectableTextWidget({required this.text});

  @override
  _SelectableTextWidgetState createState() => _SelectableTextWidgetState();
}

class _SelectableTextWidgetState extends State<SelectableTextWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Color(0xFF0E2E43) : Colors.transparent,
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
