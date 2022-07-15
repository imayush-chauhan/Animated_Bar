import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class AnimatedBar extends StatefulWidget {
  const AnimatedBar({Key? key}) : super(key: key);

  @override
  State<AnimatedBar> createState() => _AnimatedBarState();
}

class _AnimatedBarState extends State<AnimatedBar> {

  int select = 0;

  Color active = Colors.blue;
  Color inactive = Colors.black;

  @override
  Widget build(BuildContext context) {
    double mediaQH = MediaQuery.of(context).size.height;
    double mediaQW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: mediaQH,
        width: mediaQW,
        color: Colors.white.withOpacity(0.9),
        child: AnimatedBottomBar(

          width: mediaQW,

          height: mediaQH*0.1,

          selectedIndex: select,

          items: [

            AnimatedBarItem(
              icon: Icon(Icons.home),
            ),

            AnimatedBarItem(
              icon: Icon(Icons.dashboard),
            ),

            AnimatedBarItem(
              icon: Icon(Icons.safety_check),
            ),

            AnimatedBarItem(
              icon: Icon(Icons.person),
            ),

          ],
          onItemSelected: (_){
            setState((){
              select = _;
            });
            print(select);
          },
        ),
      ),
    );
  }
}

