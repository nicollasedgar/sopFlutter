/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopLuka/mainDrawer.dart';

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
      data23,
      data24;
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
    data24 = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text(
          "Pemasangan Infus",
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
                            Text("Sarung tangan"),
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
                            Text("Gunting plester"),
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
                            Text("Plester"),
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
                            Text("Desinfektan (bethadin"),
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
                            Text("Cairan NaCL 0,9% "),
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
                            Text("Bengkok"),
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
                            Text("Perlak pengalas"),
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
                            Text("Verband"),
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
                            Text("Dekatkan alat dengan pasien"),
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
                            Text("jaga privasi pasien"),
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
                            Text("Mengatur posisi nyaman pasien"),
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
                            Text("Pasang perlak di bawah area luka"),
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
                            Text("Membuka peralatan"),
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
                            Text("Memakai sarung tangan"),
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
                            Text("Basahi kasa dengan bethadin kemudian menggunakan pinset bersihkan area sekitar luar sampai bersih dari kotoran(gunakan tekni memutar searah jarum jam"),
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
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Basahi kasa dengan cairang NaCL 0,9% kemudian dengan menggunakan sebuah pinset luka area bagian dalam (gunakan teknik usapan dari atas kebawah"),
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
                            Text("Keringkan daerah luka dan pastikan area daerah luka bersih dari kotoran"),
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
                            Text("Beri obat luka sesuai kebutuhan jika perlu"),
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
                            Text("Pasang kasa steril pada area luka sampai tepi luka"),
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
                            Text("Fiksasi balutan menggunakan plester atau balutan verband sesuai kebutuhan"),
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
                            Text("Mengatur posisi pasien seperti semula"),
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
                            Text("Alat-alat dibereskan"),
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
                            Text("Lepaskan sarung tangan"),
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
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dokumentasi"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data24,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data24 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data24,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data24 = value;
                                  });
                                }),
                          ],
                        )),
                      ),
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
                                  data23 +
                                  data24 ;
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
