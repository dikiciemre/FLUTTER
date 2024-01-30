import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/behzat.jpg'),
                  backgroundColor: Colors.brown,
                  radius: 70.0,
                ),
                const Text(
                  "Ç Cafe",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 34,
                  ),
                ),
                const Text(
                  "Saçma sapan konuşma la !",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0, left: 20.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    color: Colors.blueAccent,
                  ),
                  child: const Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 35,
                        color: const Color.fromARGB(255, 255, 213, 86),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "deneme@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    color: Colors.blueGrey,
                  ),
                  child: const Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        size: 35,
                        color: Colors.amberAccent,
                      ),
                      Text(
                        "0503478523953",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
