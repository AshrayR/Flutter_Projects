import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String data;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  const CalculatorButton({
    super.key,
    required this.data,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: TextButton(onPressed:() => callback(data),
                      style: TextButton.styleFrom(backgroundColor: Color(fillColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      child: Text(data, 
                        style: TextStyle(
                          fontSize: textSize, 
                          color: Color(textColor)),),),
                  ),
                );
  }
}