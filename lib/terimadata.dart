import 'package:flutter/material.dart';

class Hal2 extends StatefulWidget {
  var a, b, c;

  Hal2({this.a, this.b, this.c});

  @override
  _Hal2State createState() => _Hal2State();
}

class _Hal2State extends State<Hal2> {
  var _a, _b, _c;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _a = widget.a;
    _b = widget.b;
    _c = widget.c;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _a,
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                _b,
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                _c,
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ),
      )),
    );
  }
}
