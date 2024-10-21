import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(

        title: const Center(
          child: Text('ask anything'),
        ),
        backgroundColor: Colors.teal,
      ),
      body: MagicBall(),

    ),
    ),
  );
}

class MagicBall extends StatefulWidget{
  @override
  _MagicBall createState() => _MagicBall();

}

class _MagicBall extends State<MagicBall>{
  var imageNumber = 1;
  void ChangeImage(){
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
        child: TextButton(onPressed: (){
              ChangeImage();
            },
        child: Image.asset('images/ball$imageNumber.png'),
              ),
            ),
          ],
        ),
    );
  }
}
