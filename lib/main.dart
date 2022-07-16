import 'package:animated_bottom_bar/animated_bottom_bar.dart';
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
      home: const AnimatedBar(),
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

  List name = [
    "Home",
    "Dashboard",
    "Security",
    "Person",
  ];

  @override
  Widget build(BuildContext context) {
    double mediaQH = MediaQuery.of(context).size.height;
    double mediaQW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: mediaQH,
        width: mediaQW,
        color: Colors.white.withOpacity(0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(),
            Text(name[select]),
            AnimatedBottomBar(

              width: mediaQW -30,

              height: mediaQH*0.085,

              selectedIndex: select,

              items: [

                AnimatedBarItem(
                  icon: const Icon(Icons.home),
                ),

                AnimatedBarItem(
                  icon: const Icon(Icons.dashboard),
                ),

                AnimatedBarItem(
                  icon: const Icon(Icons.safety_check),
                ),

                AnimatedBarItem(
                  icon: const Icon(Icons.person),
                ),

              ],
              onItemSelected: (_){
                setState((){
                  select = _;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

