import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        canvasColor: const Color.fromRGBO(11, 12, 30, 100),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final values = [
    {
      'name': 'High Rain',
      'temp': '19',
      'image': 'assets/images/Big rain drops.png',
    },
    {
      'name': 'High Snow',
      'temp': '2',
      'image': 'assets/images/Big snow.png',
    },
    {
      'name': 'High Cloud',
      'temp': '23',
      'image': 'assets/images/Cloud 3 zap.png',
    },
    {
      'name': 'Mid Snow',
      'temp': '7',
      'image': 'assets/images/Mid snow fast winds.png',
    },
    {
      'name': 'Mid Cloud, Mid Rain',
      'temp': '20',
      'image': 'assets/images/Moon cloud mid rain.png',
    },
    {
      'name': 'Sunny, Mid Rain',
      'temp': '24',
      'image': 'assets/images/Sun cloud angled rain.png',
    },
    {
      'name': 'Tornado',
      'temp': '13',
      'image': 'assets/images/Tornado.png',
    },
    {
      'name': 'Sun, Low Rain',
      'temp': '22',
      'image': 'assets/images/Sun cloud little rain.png',
    },
    {
      'name': 'Moon, Fast Wind',
      'temp': '16',
      'image': 'assets/images/Moon fast wind.png',
    },
    {
      'name': 'Sun, Cloudy, Mid Rain',
      'temp': '21',
      'image': 'assets/images/Sun cloud mid rain.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var value = values[Random().nextInt(values.length)];

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Today\'s Report',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(value['image']!),
                ),
              ),
            ),
            Center(
              child: Text(
                value['name']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value['temp']!,
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Row(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
