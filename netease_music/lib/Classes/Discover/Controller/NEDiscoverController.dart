import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
/*
 * 发现页面
 */
class NEDiscoverController extends StatefulWidget {
  @override
  _NEDiscoverControllerState createState() => _NEDiscoverControllerState();
}

class _NEDiscoverControllerState extends State<NEDiscoverController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Text('发现'),
    );
  }
}
