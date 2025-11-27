import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("my first app")),
        // body: Text(
        //   "hello guys",
        //   style: TextStyle(
        //     fontSize: 30,
        //     color: const Color.fromARGB(255, 94, 216, 7),
        //   ),
        // ),
        body: Container(
          color: const Color.fromARGB(255, 187, 207, 223),
          width: double.maxFinite,

          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "hello guys",
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 94, 216, 7),
                ),
              ),
              Text(
                "welcome to flutter",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 216, 94, 7),
                ),
              ),
              Text(
                "this is my first app",
                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 7, 94, 216),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
