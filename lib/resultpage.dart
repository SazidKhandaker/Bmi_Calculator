import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  var Result;
  Resultpage(this.Result);

  @override
  String underweight =
      "Your Bmi is Result less than perfect weight.Please eat healthy food daily.😐";
  String normal = "Congratulations your bmi  is  perfect . 🥰 ";
  String overweight =
      "Your Bmi is over than normal range,Please do exercise. 😓 ";
  String veryoverweight =
      "Your Bmi is very much over than normal range,Please do exercise and eat less food.  🥵  ";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "BMI Result",
          style: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.orange),
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              Result < 18
                                  ? "Your Bmi ${Result} is Underweight 😒\n${underweight}"
                                  : Result < 25
                                      ? "Your Bmi ${Result} is Normal Weight 😍\n${normal}"
                                      : Result < 30
                                          ? "Your Bmi ${Result} is Overweight 😮\n${overweight}"
                                          : Result > 30
                                              ? "Your Bmi ${Result} is Obese 😱\n${veryoverweight}"
                                              : "",
                              style: TextStyle(
                                  letterSpacing: 2,
                                  wordSpacing: 2,
                                  shadows: [
                                    Shadow(
                                        offset: Offset(1, 1),
                                        color: Colors.white)
                                  ],
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.red, width: 3),
                      ),
                      child: Center(
                        child: Text(
                          "Re-Calculation",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
