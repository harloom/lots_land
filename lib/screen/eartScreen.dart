
import 'package:flutter/material.dart';

class BrowserScreen extends StatefulWidget {
  final Color bgColor;

  const BrowserScreen({Key key, this.bgColor =Colors.white70}) : super(key: key);

  @override
  _BrowserScreenState createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("Kavlin"),
          backgroundColor: widget.bgColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle_outline,color:
              Colors.white,),
            )],
        ),

        body: SafeArea(
        child: Container(
          child: Text("Ini Browser Tanah"),

        ),
      )
    );

  }
}


