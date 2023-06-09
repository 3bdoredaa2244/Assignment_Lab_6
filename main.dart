import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int teamA = 0;

  int teamB = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("basketball Score Counter"),
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 400,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "    Team A ",
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "$teamA",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 60),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamA++;
                                  print(teamA);
                                });
                              },
                              child: Text(
                                " +1 POINT",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(40, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamA += 2;
                                });
                              },
                              child: Text(
                                " +2 POINT",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(50, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamA += 3;
                                });
                              },
                              child: Text(
                                " +3 POINT",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(60, 50)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Color(0xffff0000),
                      ),
                    ),
                    Container(
                      height: 400,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "   Team B",
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "$teamB",
                              style: TextStyle(
                                  fontSize: 60, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamB++;
                                });
                              },
                              child: Text(
                                " +1 POINT",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(40, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamB += 2;
                                });
                              },
                              child: Text(
                                " +2 POINT",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(80, 50)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamB += 3;
                                });
                              },
                              child: Text(
                                " +3 POINT",
                              ),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(80, 50)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA = 0;
                          teamB = 0;
                        });
                      },
                      child: Text("RESRT"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(120, 100),
                      )),
                  color: Colors.red,
                )
              ],
            )));
  }
}
