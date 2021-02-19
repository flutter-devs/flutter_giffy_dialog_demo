import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class GiffyDemo extends StatefulWidget {
  @override
  _GiffyDemoState createState() => _GiffyDemoState();
}

class _GiffyDemoState extends State<GiffyDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giffy Dialog Demo"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.purple[300],
                padding: EdgeInsets.only(left: 25,right: 25),
                child: Text(
                  'Asset Giffy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AssetGiffyDialog(
                        image: Image.asset(
                          'assets/education.gif',
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          'Digital Working',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        entryAnimation: EntryAnimation.TOP_LEFT,
                        description: Text(
                          'Digital working is about understanding the role of technology.'
                              'This library helps you easily create fancy giffy dialog.',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                        buttonCancelColor:Colors.purple[300],
                        buttonOkColor:Colors.purple[300],
                        onOkButtonPressed: () {
                          Navigator.pop(context);
                        },
                      ));
                }),
            RaisedButton(
                color: Colors.purple[300],
                child: Text(
                  "Network Giffy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => NetworkGiffyDialog(
                        image: Image.network(
                          "https://i.pinimg.com/originals/3d/36/c3/3d36c36a6bd147d3b65e4de86087f9f1.gif",
                          fit: BoxFit.cover,
                        ),
                        entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                        title: Text(
                          'Team Work',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        description: Text(
                          'Teamwork is the collaborative effort of a group to achieve a common goal or '
                              'to complete a task in the most effective and efficient way. '
                              'This library helps you easily create fancy giffy dialog.',
                          textAlign: TextAlign.center,
                        ),
                        buttonCancelColor:Colors.purple[300],
                        buttonOkColor:Colors.purple[300],
                        onOkButtonPressed: () {
                          Navigator.pop(context);
                        },
                      ));
                }),
            RaisedButton(
                color: Colors.purple[300],
                padding: EdgeInsets.only(left: 28,right: 28),
                child: Text(
                  'Flare Giffy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => FlareGiffyDialog(
                        flarePath: 'assets/space.flr',
                        flareAnimation: 'pull',
                        title: Text(
                          'Space',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        entryAnimation: EntryAnimation.DEFAULT,
                        description: Text(
                          'Space is the boundless three-dimensional extent in which objects and events have relative position and direction. '
                              'This library helps you easily create fancy flare dialog.',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                        buttonCancelColor:Colors.purple[300],
                        buttonOkColor:Colors.purple[300],
                        onOkButtonPressed: () {
                          Navigator.pop(context);
                        },
                      ));
                }),

          ],
        ),
      ),
    );
  }
}
