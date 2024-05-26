import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ludoNumber1 = 1;
  int ludoNumber2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff153448),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        title: Text("Ludo App"),
        backgroundColor: Color(0xff153448),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    print("hi khalid");
                    setState(() {
                      //ludoNumber1 = 4;
                      ludoNumber1 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage("images/dice$ludoNumber1.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  splashColor: const Color.fromARGB(255, 94, 79, 78),
                  onTap: () {
                    setState(() {
                      // ludoNumber2 = 5;
                      ludoNumber2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage("images/dice$ludoNumber2.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
