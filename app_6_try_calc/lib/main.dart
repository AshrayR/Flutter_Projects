import 'package:app_6_try_calc/pages/calculator_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if(btnVal == 'C'){
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    }else if(btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    }else if(btnVal == '+/-') {
      if(textToDisplay[0] != '-'){
        res = '-$textToDisplay';
      }else {
        res = textToDisplay.substring(1);
      }
    }else if(btnVal =='<') {
      res = textToDisplay.substring(0, textToDisplay.length -1);
    }else if(
      btnVal == '+' ||
      btnVal == '-' ||
      btnVal == 'X' ||
      btnVal == '/') {
        firstNum = int.parse(textToDisplay);
        res = '';
        operation = btnVal;
      }else if(btnVal == '='){
        secondNum = int.parse(textToDisplay);
        if(operation == '+'){
          res = (firstNum+secondNum).toString();
          history = firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if(operation == '-'){
          res = (firstNum-secondNum).toString();
          history = firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if(operation == 'X'){
          res = (firstNum*secondNum).toString();
          history = firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if(operation == '/'){
          res = (firstNum/secondNum).toString();
          history = firstNum.toString() + operation.toString() + secondNum.toString();
        }
      }
      else {
        res = int.parse(textToDisplay + btnVal).toString();
      }
      setState(() {
        textToDisplay = res;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("CALCULATOR", 
          style: TextStyle(
            fontSize: 24, 
            color: Colors.white, 
            fontWeight: FontWeight.bold,),),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  history,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0x66FFFFFF),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(221, 119, 119, 119),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  data: 'AC',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: 'C',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '<',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '/',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  data: '9',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '8',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '7',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: 'X',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  data: '6',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '5',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '4',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '-',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  data: '3',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '2',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '1',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '+',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  data: '+/-',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '0',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '00',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  data: '=',
                  fillColor: 0xFF424242,
                  textColor: 0xFFFFFFFF,
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}