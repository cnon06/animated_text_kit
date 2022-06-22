import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        TextLiquidFill(
        text: 'LIQUIDY',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.redAccent,

          textStyle: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 100,
        ),
            AnimatedTextKit(

              animatedTexts: [
                TypewriterAnimatedText('Discipline is the best tool',textStyle: TextStyle(fontSize: 30)),
                TypewriterAnimatedText('Design first, then code',textStyle: TextStyle(fontSize: 25)),
                TypewriterAnimatedText('Do not patch bugs out, rewrite them',textStyle: TextStyle(fontSize: 20)),
                TypewriterAnimatedText('Do not test bugs out, design them out',textStyle: TextStyle(fontSize: 15)),

              ],
              onTap: () {
                print("Tap Event");
              },
            ),
            SizedBox(height: 30),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World',textStyle: TextStyle(fontSize: 20)),
                WavyAnimatedText('Look at the waves',textStyle: TextStyle(fontSize: 20)),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
            SizedBox(height: 30),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FlickerAnimatedText('Flicker Frenzy',textStyle: TextStyle(fontSize: 20)),
            FlickerAnimatedText('Night Vibes On',textStyle: TextStyle(fontSize: 20)),
            FlickerAnimatedText("C'est La Vie !",textStyle: TextStyle(fontSize: 20)),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),


            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Larry Page',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Bill Gates',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Steve Jobs',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),

          ],
        ),
      ),

    );
  }
}
