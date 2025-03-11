import 'package:flutter/material.dart';
import 'componenets/Card_countainer.dart';

class ResultPage extends StatelessWidget {
  final int age;
  final String gender;
  final double bmi;

  const ResultPage({
    super.key,
    required this.age,
    required this.gender,
    required this.bmi,
  });

  String getBMICategory() {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 25) {
      return "Normal Weight";
    } else if (bmi < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  Color getBMICategoryColor() {
    if (bmi < 18.5) {
      return Colors.lightBlue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Color(0xFF24263B),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: CardContainer(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                "BMI Result\n${bmi.toStringAsFixed(1)}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              Text(
                "${getBMICategory()}",
                style: TextStyle(
                    color: getBMICategoryColor(),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Age: $age\nGender: $gender\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white54,
                ),
              ),

            ]
          ),
      ),
    );
  }
}
