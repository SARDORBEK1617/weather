import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF55A0BF),
              Color(0xFF263C47),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text("Today,February,23th,2022"),
            Text("Barcelona"),
            Text("Spain"),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: Column(
                children: [
                  Image.network("src"),
                  Text("10* C"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Wind status",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "7 mph",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Humidity",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "85%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Wisibilty",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "6.4 miles",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Air pressure",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "998 mb",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const New(),

          ],
        ),
      ),
    );
  }
}
