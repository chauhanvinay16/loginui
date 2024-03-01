import 'package:flutter/material.dart';

class Mywel extends StatefulWidget {
  const Mywel({Key? key}) : super(key: key);

  @override
  State<Mywel> createState() => _MywelState();
}

class _MywelState extends State<Mywel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('WELCOME USER')
          ],
        ),
      ),
    );
  }
}
