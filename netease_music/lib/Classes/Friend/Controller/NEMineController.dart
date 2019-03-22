import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
/*
 * 我的页面
 */
class NEMineController extends StatefulWidget {
  @override
  _NEMineControllerState createState() => _NEMineControllerState();
}

class _NEMineControllerState extends State<NEMineController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Text('我的'),
    );
  }
}
