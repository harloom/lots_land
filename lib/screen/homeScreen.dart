
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color bgColor;

  const HomeScreen({Key key, this.bgColor =   Colors.white70}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 1));
    _animation = Tween(
        begin: 0.0,
        end:  1.0
    ).animate(_controller);
    _controller.forward();
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
      appBar: AppBar(title: Text("Home"),
      backgroundColor: widget.bgColor,
      ),

      body: SafeArea(
        child: Container(

          child: Text("Ini Home"),

        ),
      ),
    );
  }
}


