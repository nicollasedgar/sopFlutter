/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopOksigen/mainDrawer.dart';

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
      data13;
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
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text(
          "Memberikan Oksigen",
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
                            Text("Tabung O2 lengkap dengan manometer"),
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
                            Text("Mengukur aliran flowmeter"),
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
                            Text("Botol pelembab berisi air steril/ aquadest"),
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
                            Text("Selang O2"),
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
                            Text("Plester"),
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
                            Text("Kapas Alkohol"),
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
                      // buildCard("Tabung O2 lengkap dengan manometer"),
                      // buildCard("Mengukur aliran flowmeter"),
                      // buildCard("Botol pelembab berisi air steril/ aquadest"),
                      // buildCard("Selang O2"),
                      // buildCard("Plester"),
                      // buildCard("Kapas Alkohol"),
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
                            Text("Atur posisi semifoler"),
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
                            Text("Selang dihubungkan"),
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
                            Text("Sebelum memasang slang pada hidung pasien slang dibersihkan dahulu dengankapasa alkohol"),
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
                            Text("Flowmeter dibuka, dicoba pada punggung tangan lalu ditutup kembali"),
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
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Memasang canul hidung, lakukan fixasi (plester"),
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
                            Text("Membuka flowmeter kembali dengan ukuran sesuai advis dokter "),
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
                            Text("Dokumentasi"),
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
                      // buildCard("Atur posisi semifoler"),
                      // buildCard("Selang dihubungkan"),
                      // buildCard("Sebelum memasang slang pada hidung pasien slang dibersihkan dahulu dengankapasa alkohol"),
                      // buildCard("Flowmeter dibuka, dicoba pada punggung tangan lalu ditutup kembali"),
                      // buildCard("Memasang canul hidung, lakukan fixasi (plester)"),
                      // buildCard("Membuka flowmeter kembali dengan ukuran sesuai advis dokter "),
                      // buildCard("Dokumentasi"),
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
                                  data13 ;
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
