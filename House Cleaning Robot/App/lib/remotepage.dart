import 'package:flutter/material.dart';

class RemotePage extends StatefulWidget {
  @override
  _RemotePageState createState() => _RemotePageState();
}

class _RemotePageState extends State<RemotePage> {
  int _batteryLevel = 75;

  void _moveFront() {
    // code to move the robot forward
    print('Moving forward');
  }

  void _moveBack() {
    // code to move the robot backward
    print('Moving backward');
  }

  void _moveLeft() {
    // code to move the robot left
    print('Moving left');
  }

  void _moveRight() {
    // code to move the robot right
    print('Moving right');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_upward),
                  onPressed: _moveFront,
                  iconSize: 80,
                  color: Color(0xFF6985e8),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: _moveLeft,
                  iconSize: 60,
                  color: Color(0xFF6985e8),
                ),
                IconButton(
                  icon: Icon(Icons.circle),
                  onPressed: () {},
                  iconSize: 60,
                  color: Color(0xff0f17ad),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: _moveRight,
                  iconSize: 60,
                  color: Color(0xFF6985e8),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_downward),
                  onPressed: _moveBack,
                  iconSize: 80,
                  color: Color(0xFF6985e8),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.battery_full,
                  color: Colors.green,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Battery Level: $_batteryLevel%',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Device state: connected',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
