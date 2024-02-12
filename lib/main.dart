import 'dart:math';
import 'package:baraban_dart/pages/questionNum.dart';
import 'package:baraban_dart/screens/1_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpinWheelScreen(),
      routes: {
        SpinWheelScreen.id:(context)=> SpinWheelScreen(),
        QuestionScreen.id:(context)=> QuestionScreen(10),
        FirstPage.id:(context)=>FirstPage(),



      },
    );
  }
}

class SpinWheelScreen extends StatelessWidget {
  static const String id="spin_wheel_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spin Wheel'),
      ),
      body: Center(
        child: SpinWheelWidget(),
      ),
    );
  }
}

class SpinWheelWidget extends StatefulWidget {
  @override
  _SpinWheelWidgetState createState() => _SpinWheelWidgetState();
}

class _SpinWheelWidgetState extends State<SpinWheelWidget> {
  late double rotationAngle;
  late int selectedNumber;
  Set<int> selectedNumbers = Set();

  @override
  void initState() {
    super.initState();
    rotationAngle = 0.0;
    selectedNumber = 1; // Initial selected number
  }

  void _spinWheel() {
    setState(() {
      final random = Random();
      do {
        selectedNumber = random.nextInt(10) + 1;
      } while (selectedNumbers.contains(selectedNumber));
      selectedNumbers.add(selectedNumber);

      rotationAngle = (rotationAngle + (3600 + random.nextInt(3600))) % 360.0; // Rotate multiple times
    });
  }

  void _navigateToQuestionScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuestionScreen(selectedNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: rotationAngle * (pi / 180),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlue,
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  _spinWheel();
                  _navigateToQuestionScreen();
                },
                child: Text(
                  selectedNumber.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _spinWheel();
            _navigateToQuestionScreen();
          },
          child: Text('Spin'),
        ),
      ],
    );
  }
}

class QuestionScreen extends StatelessWidget {
  final int selectedNumber;

  QuestionScreen(this.selectedNumber);
  static const String id="question_screen";

  @override
  Widget build(BuildContext context) {
    // Replace this logic with your question fetching mechanism
    String question = 'Question for number $selectedNumber';

    return Scaffold(
      appBar: AppBar(
        title: Text('Question Screen'),
        actions: [
          IconButton(onPressed: (){Navigator.pushNamed(context,QuestionNumber.id);}, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Number: $selectedNumber',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              question,
              style: TextStyle(fontSize: 18),
            ),
            Container(
                height:400,child: QuestionNumber()),
          ],
        ),
      ),
    );
  }
}

