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
  String data;

  void ubahValue(String value) {
    setState(() {
      data = value;
    });
  }

  @override
  Widget buildCard(var teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(teks),
          RadioListTile(
              value: 1,
              title: Text("Sudah"),
              groupValue: data,
              onChanged: null),
          RadioListTile(
              value: 0,
              title: Text("Belum"),
              groupValue: data,
              onChanged: null),
        ],
      )),
    );
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
                      buildCard("Sarung tangan"),
                      buildCard("Gunting plester"),
                      buildCard("Plester"),
                      buildCard("Desinfektan (bethadin)"),
                      buildCard("Cairan NaCL 0,9 %"),
                      buildCard("Bengkok"),
                      buildCard("Perlak pengalas"),
                      buildCard("Verband"),
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
                      buildCard("Dekatkan alat dengan pasien"),
                      buildCard("jaga privasi pasien"),
                      buildCard("Mengatur posisi nyaman pasien"),
                      buildCard("Pasang perlak di bawah area luka"),
                      buildCard("Membuka peralatan"),
                      buildCard("Memakai sarung tangan"),
                      buildCard(
                          "Basahi kasa dengan bethadin kemudian menggunakan pinset bersihkan area sekitar luar sampai bersih dari kotoran(gunakan tekni memutar searah jarum jam"),
                      buildCard(
                          "Basahi kasa dengan cairang NaCL 0,9% kemudian dengan menggunakan sebuah pinset luka area bagian dalam (gunakan teknik usapan dari atas kebawah"),
                      buildCard(
                          "Keringkan daerah luka dan pastikan area daerah luka bersih dari kotoran"),
                      buildCard("Beri obat luka sesuai kebutuhan jika perlu"),
                      buildCard(
                          "Pasang kasa steril pada area luka sampai tepi luka"),
                      buildCard(
                          "Fiksasi balutan menggunakan plester atau balutan verband sesuai kebutuhan"),
                      buildCard("Mengatur posisi pasien seperti semula"),
                      buildCard("Alat-alat dibereskan"),
                      buildCard("Lepaskan sarung tangan"),
                      buildCard("Dokumentasi"),
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
