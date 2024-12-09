import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Challenge'), // Title bar with app name
        centerTitle: true,
      ),
      body: Center( // Ensures content is centered on screen
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding around the content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
            children: <Widget>[
              Text(
                'Get Excited for the Flutter UI Challenge! 🚀', 
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Center the text
              ),
              SizedBox(height: 20), // Space between the text and the button
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed! 🚀'); // Print message when clicked
                },
                child: Text('Press Me Please'),
              ),
              SizedBox(height: 20), // Space between the button and the image
              Image.network(
                'https://tinyurl.com/bdfd544u', // Image from the internet
                width: 200, // Set width for the image
              ),
            ],
          ),
        ),
      ),
    );
  }
}
