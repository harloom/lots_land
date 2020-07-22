
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lots_land/data/models/User.dart';
import 'package:lots_land/delegate/SearchView.dart';

class InfoScreen extends StatefulWidget {
  final Color bgColor;

  const InfoScreen({Key key, this.bgColor=Colors.white70}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> with SingleTickerProviderStateMixin {
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
    return FadeTransition(
      opacity: _animation,
      child: Scaffold(
        appBar: AppBar(title: Text("User"),
          backgroundColor: widget.bgColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                  LineIcons.search
              ),
              onPressed: (){
                showSearch(context: context, delegate: SearchView());
              },
            ),

            IconButton(
              icon: Icon(Icons.add_circle_outline,color:
                Colors.white,),
          )],
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
            children:
                dummyUser.map<Widget>((user)
                  => FlatButton(
                    onPressed: (){
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                      content: Text(user.nama),
                      )
                      );
                    },
                    child: GFListTile(
                       titleText: user.nama,
                        subtitleText: user.noTelp,
                        avatar: GFAvatar(
                         backgroundImage: NetworkImage(user.urlImage),
                         backgroundColor: Colors.grey[300],
                      ),
                    ),
                  )
            ).toList(),
          )
        ),
      ),
    )
    );
  }
}


