import 'package:flutter/material.dart';
import 'sensor_widget.dart';
import 'sensor_2_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sensor Suhu dan Kelembapan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SensorWidget(sensorName: 'SENSOR 1', humidityValue: 8, fahrenheitValue: 30, celsiusValue: 75),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Sensor2Widget(sensorName: 'SENSOR 2', humidityValue: 15, fahrenheitValue: 22, celsiusValue: 65),
            ),
          ],
        ),
      ),
    );
  }
}
