import 'package:baraban_dart/main.dart';
import 'package:baraban_dart/screens/1_screen.dart';
import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  static const String id = "question_number";

  const QuestionNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, FirstPage.id);
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "1",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "2",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "3",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "4",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "5",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "6",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "7",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "8",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "9",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "10",
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],

    );
  }
}
