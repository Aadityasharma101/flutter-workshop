import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ProfileWWidget());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Center(
              child: Text("hello blue", style: TextStyle(color: Colors.white)),
            ),
          ),
          // SizedBox(width: 12),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: Center(
              child: Text("hello green", style: TextStyle(color: Colors.white)),
            ),
          ),
          // SizedBox(width: 92),
          // Spacer(),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text("hello red", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class DaiWidget extends StatelessWidget {
  const DaiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16.0),
        color: Colors.grey[300],
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(height: 100, width: double.infinity, color: Colors.blue),

            // Green container with title + description
            SizedBox(height: 20),
            Container(
              height: 150,
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to My App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "HI this is me aaditya who is fond of drinking pepsi and coding flutter applications all day long without taking breaks or eating food or sleeping  ",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWWidget extends StatelessWidget {
  const ProfileWWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        color: Colors.grey[300],
        child: ListView(
          children: [
            for (int i = 0; i < 5; i++) ...{
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0pQJAwqGzgbLm_UzMY1OaUkTciysLCZJNjg&s",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aaditya",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Hi, this is me Aaditya. I am fond of drinking Pepsi and coding Flutter applications all day long...",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              height: 1.3,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk_47pRg9flE_qhm1-MvAWsmetNwTdUs6Zew&s",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 16),

                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "Aaditya loves coding and Pepsi",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            },
          ],
        ),
      ),
    );
  }
}
