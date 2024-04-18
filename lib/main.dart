import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColorChangerPage extends StatefulWidget {
  @override
  _ColorChangerPageState createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  Color _backgroundColor = Colors.green; // Màu nền mặc định là xanh lá cây
  Random _random = Random(); // Tạo một đối tượng Random

  void _changeColor() {
    setState(() {
      // Tạo một màu ngẫu nhiên
      _backgroundColor = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                color: _backgroundColor, // Sử dụng màu nền hiện tại
                width: 200,
                height: 200,
                child: Center(
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                FloatingActionButton(
                  onPressed: _changeColor,
                  child: Icon(Icons.color_lens),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
