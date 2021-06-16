import 'package:flutter/material.dart';
import 'package:smart_sop/sopLuka/mainDrawer.dart';
import 'package:smart_sop/constants.dart';

/// This is the stateful widget that the main application instantiates.
class PengertianLuka extends StatefulWidget {
  final dynamic id;
  const PengertianLuka({@required this.id});

  @override
  State<PengertianLuka> createState() => _PengertianLukaState();
}

/// This is the private State class that goes with PengertianLuka.
class _PengertianLukaState extends State<PengertianLuka> {
  // Variable
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text(
          "Perawatan Luka",
          style: TextStyle(color: cYellow),
        ),
      ),
      endDrawer: MainDrawer(
        id: widget.id,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Pengertian \n with id : ${widget.id}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mensucikan luka, mengobati luka dan menutup kembali luka dengan teknik steril.",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
