import 'package:bmicalculator/resultpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool isSelected = false;
  int hight = 180;
  int weight = 70;
  int age = 20;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isSelected == false) {
                                      isSelected = true;
                                    } else {
                                      isSelected = false;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: isSelected == true
                                        ? Border.all(
                                            width: 1, color: Colors.orange)
                                        : Border.all(color: Colors.transparent),
                                    color: isSelected == true
                                        ? Colors.black12
                                        : Colors.black45,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.male,
                                        size: 60,
                                        color: isSelected == true
                                            ? Colors.orange
                                            : Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Male",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: isSelected == true
                                                ? Colors.orange
                                                : Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: isSelected == false
                                        ? Border.all(
                                            width: 1, color: Colors.orange)
                                        : Border.all(
                                            width: 1,
                                            color: Colors.transparent),
                                    color: isSelected == true
                                        ? Colors.black45
                                        : Colors.black12,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.female,
                                        size: 60,
                                        color: isSelected == true
                                            ? Colors.white
                                            : Colors.orange,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: isSelected == false
                                                ? Colors.orange
                                                : Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                          ]),
                    )),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HIGHT",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${hight.toInt()}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Cm",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white54),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 15),
                                    overlayShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 18,
                                    ),
                                    thumbColor: Colors.orange,
                                    activeTrackColor: Colors.red),
                                child: Slider(
                                  value: hight.toDouble(),
                                  min: 40,
                                  max: 220,
                                  onChanged: (value) {
                                    setState(() {
                                      hight = value.toInt();
                                    });
                                  },
                                ))
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(children: [
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 34),
                                ),
                                Text(
                                  "${weight}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.orange),
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (weight > 0) {
                                                  weight--;
                                                }
                                              });
                                            },
                                            icon: Icon(
                                              Icons.horizontal_rule,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.orange),
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                weight++;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 34,
                                  ),
                                ),
                                Text(
                                  "${age}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.orange),
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (age > 0) {
                                                  age--;
                                                }
                                              });
                                            },
                                            icon: Icon(
                                              Icons.horizontal_rule,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.orange),
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                age++;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                        ]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          var Bmiresult =
                              (weight / ((hight / 100) * (hight / 100)))
                                  .toInt();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Resultpage(Bmiresult)));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.orange, width: 2),
                            color: Colors.black12,
                          ),
                          child: Center(
                              child: Text(
                            "Calculation",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
