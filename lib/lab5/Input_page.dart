import 'package:flutter/material.dart';
import 'componenets/Card_countainer.dart';
import 'componenets/Counter_Card.dart';
import 'componenets/Gender_card.dart';
import 'Result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 28;
  String gender = "Male";

  void calculateBMI() {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(age: age, gender: gender, bmi: bmi),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBar(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(
                    label: "MALE",
                    icon: Icons.male,
                    selected: gender == "Male",
                    onTap: () => setState(() => gender = "Male"),
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    label: "FEMALE",
                    icon: Icons.female,
                    selected: gender == "Female",
                    onTap: () => setState(() => gender = "Female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 18, color: Colors.white54),
                  ),
                  Row(
                    mainAxisSize:
                        MainAxisSize
                            .min, // Ensures the row only takes necessary space
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:
                        TextBaseline
                            .alphabetic, // Aligns text to the same baseline
                    children: [
                      Text(
                        '$height',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' CM',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 24,
                          fontWeight:
                              FontWeight
                                  .bold, // You can adjust this size if needed
                        ),
                      ),
                    ],
                  ),

                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 220,
                    activeColor: Color(0xffE83D67),
                    inactiveColor: Colors.white54,
                    onChanged:
                        (value) => setState(() => height = value.toInt()),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CounterCard(
                    label: "WEIGHT",
                    value: weight,
                    onDecrease: () => setState(() => weight--),
                    onIncrease: () => setState(() => weight++),
                  ),
                ),
                Expanded(
                  child: CounterCard(
                    label: "AGE",
                    value: age,
                    onDecrease: () => setState(() => age--),
                    onIncrease: () => setState(() => age++),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: calculateBMI,
            child: Container(
              color: Color(0xffE83D67),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
