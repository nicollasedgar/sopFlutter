import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:smart_sop/sopOksigen/pengertian.dart';
import 'package:smart_sop/sopBakar/pengertian.dart';
import 'package:smart_sop/sopInfus/pengertian.dart';
import 'package:smart_sop/sopLuka/pengertian.dart';
import 'package:smart_sop/sopObservasi/pengertian.dart';

class Daftar extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Daftar> {
  var a = '';
  @override
  Widget build(BuildContext context) {
    // Controller
    TextEditingController input1 = TextEditingController();
    TextEditingController input2 = TextEditingController();
    TextEditingController input3 = TextEditingController();

    // root container
    // Widget buildContainer(var teks) {
    //   return Container(
    //     color: Colors.indigo,
    //     margin: EdgeInsets.all(10),
    //     height: 50,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [Text(teks)],
    //     ),
    //   );
    // }

    // widget text field
    Widget buildTF(var ht, TextEditingController ctrl) {
      return TextField(
        controller: ctrl,
        decoration: InputDecoration(
          // border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 30),
          icon: Icon(
            Icons.person,
            color: cYellow,
          ),
          labelText: ht,
        ),
      );
    }

    // widget elevated button
    @override
    Widget buildButton(var teks, var hal) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: cYellow,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => hal));
        },
        child: Text(teks),
      );
    }

    // my whiteboard
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: cWhite,
        child: Container(
          margin: EdgeInsets.all(30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                  "SMART SOP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                buildButton("Perawatan luka", PengertianLuka()),
                SizedBox(
                  height: 30,
                ),
                buildButton("Pemasangan infus", PengertianInfus()),
                SizedBox(
                  height: 30,
                ),
                buildButton("Memberikan oksigen", PengertianOksigen()),
                SizedBox(
                  height: 30,
                ),
                buildButton("Penanganan luka bakar", PengertianBakar()),
                SizedBox(
                  height: 30,
                ),
                buildButton("Observasi pasien gawat", PengertianObservasi()),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
