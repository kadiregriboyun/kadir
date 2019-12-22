import 'package:flutter/material.dart';

class Sepet extends StatefulWidget {
  Sepet({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'sipariş eklendiğinde siparişin gözükeceği yer',
            ),
          ],
        ),
      ),
    );
  }
}
