import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:smart_sop/sopOksigen/pengertian.dart';
import 'package:smart_sop/sopBakar/pengertian.dart';
import 'package:smart_sop/sopInfus/pengertian.dart';
import 'package:smart_sop/sopLuka/pengertian.dart';
import 'package:smart_sop/sopObservasi/pengertian.dart';

class Daftar extends StatefulWidget {
  final dynamic id;
  const Daftar({@required this.id});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Daftar> {
  // Variable Private
  var _id;
  var a = '';

  // Method Customize
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _id = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    // Controller
    TextEditingController input1 = TextEditingController();
    TextEditingController input2 = TextEditingController();
    TextEditingController input3 = TextEditingController();

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
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => hal));
        },
        child: Text(teks),
      );
    }

    // my whiteboard
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nurse.jpg'),
                fit: BoxFit.cover
              )
            ),
        // color: Color(0xff8F1AAA),
        height: double.infinity,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: [
                  Divider(
                    indent: 40,
                    endIndent: 20,
                  ),
                  Image(image: AssetImage('images/stikes.png')),
                  Text(
                    "SMART SOP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: cWhite),
                  ),
                ]),
                Center(
                  child: Text(
                  "with id = $_id",
                  style: TextStyle(fontSize: 20, color: cWhite),
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
                buildButton("Pemasangan infus", PengertianInfus(id: _id)),
                SizedBox(
                  height: 30,
                ),
                buildButton("Perawatan luka", PengertianLuka(id: _id)),
                SizedBox(
                  height: 30,
                ),
                buildButton("Memberikan oksigen", PengertianOksigen(id: _id)),
                SizedBox(
                  height: 30,
                ),
                buildButton("Penanganan luka bakar", PengertianBakar(id: _id)),
                SizedBox(
                  height: 30,
                ),
                buildButton(
                    "Observasi pasien gawat", PengertianObservasi(id: _id)),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
