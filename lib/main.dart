import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
        body: Magic8(),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int imgNo = 1;
  String str = 'YES';

  void changeBall() {
    setState(() {
      imgNo = new Random().nextInt(5) + 1;
      if(imgNo==1){
        str='YES';
      }else if(imgNo==2)
        str='NO';
      else if(imgNo==3)
        str='ASK AGAIN LATER';
      else if(imgNo==4)
        str='THE ANSWER IS YES';
      else if(imgNo==5)
        str='I HAVE NO IDEA';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            changeBall();
          },
          child: (Image.asset('images/ball$imgNo.png')),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            '$str',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
