/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopBakar/mainDrawer.dart';

/// This is the stateful widget that the main application instantiates.
class Prosedur extends StatefulWidget {
  @override
  State<Prosedur> createState() => _ProsedurState();
}

/// This is the private State class that goes with Prosedur.
class _ProsedurState extends State<Prosedur> {
  String data1,
      data2,
      data3,
      data4,
      data5,
      data6,
      data7,
      data8,
      data9,
      data10,
      data11,
      data12,
      data13,
      data14,
      data15,
      data16,
      data17,
      data18,
      data19,
      data20,
      data21,
      data22,
      data23;
  String hasil;

  @override
  void initState() {
    super.initState();
    data1 = "";
    data2 = "";
    data3 = "";
    data4 = "";
    data5 = "";
    data6 = "";
    data7 = "";
    data8 = "";
    data9 = "";
    data10 = "";
    data11 = "";
    data12 = "";
    data13 = "";
    data14 = "";
    data15 = "";
    data16 = "";
    data17 = "";
    data18 = "";
    data19 = "";
    data20 = "";
    data21 = "";
    data22 = "";
    data23 = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text(
          "Perawatan Luka Bakar",
          style: TextStyle(color: cYellow),
        ),
      ),
      endDrawer: MainDrawer(),
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Persiapan Alat",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pinset anatomi"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data1,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data1 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data1,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data1 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kassa"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data2,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data2 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data2,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data2 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pinset Chirurge"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data3,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data3 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data3,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data3 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kapas"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data4,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data4 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data4,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data4 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gunting"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data5,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data5 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data5,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data5 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hand scoen"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data6,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data6 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data6,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data6 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bengkok"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data7,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data7 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data7,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data7 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Spuit"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data8,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data8 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data8,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data8 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kom kecil"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data9,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data9 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data9,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data9 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NaCL"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data10,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data10 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data10,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data10 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Persiapan Alat Non-steril",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gunting balutan"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data11,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data11 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data11,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data11 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SSD (Silver sulfa diacin"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data12,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data12 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data12,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data12 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Plester"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data13,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data13 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data13,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data13 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tempat sampah"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data14,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data14 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data14,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data14 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Verban"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data15,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data15 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data15,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data15 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Pelaksanaan Tindakan",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Memberitahu pasien dan keluarga"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data16,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data16 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data16,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data16 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Perawat cuci tangan"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data17,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data17 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data17,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data17 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mengatur posisi (perawat memakai hand scoen"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data18,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data18 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data18,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data18 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Perawat membersihkan luka bakar"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data19,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data19 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data19,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data19 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mendesinfektan luka dan sekitarnya dengan NaCl"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data20,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data20 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data20,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data20 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Perawat merapikan alat"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data21,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data21 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data21,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data21 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("perawat melepaskan handscoon"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data22,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data22 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data22,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data22 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dokumentasi"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data23,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data23 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data23,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data23 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
                      // buildTeks("Memberitahu pasien dan keluarga"),
                      // buildTeks("Perawat cuci tangan"),
                      // buildTeks("Mengatur posisi (perawat memakai hand scoen)"),
                      // buildTeks("Perawat membersihkan luka bakar"),
                      // buildTeks("Mendesinfektan luka dan sekitarnya dengan NaCl"),
                      // buildTeks("Perawat merapikan alat"),
                      // buildTeks("perawat melepaskan handscoon"),
                      // buildTeks("Dokumentasi"),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              hasil = data1 +
                                  data2 +
                                  data3 +
                                  data4 +
                                  data5 +
                                  data6 +
                                  data7 +
                                  data8 +
                                  data9 +
                                  data10 +
                                  data11 +
                                  data12 +
                                  data13 +
                                  data14 +
                                  data15 +
                                  data16 +
                                  data17 +
                                  data18 +
                                  data19 +
                                  data20 +
                                  data21 +
                                  data22 +
                                  data23 ;
                            });
                            print(hasil);
                          },
                          child: Text("Simpan Data")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
