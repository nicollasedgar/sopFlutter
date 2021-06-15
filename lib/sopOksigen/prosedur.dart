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
                      buildCard("Tabung O2 lengkap dengan manometer"),
                      buildCard("Mengukur aliran flowmeter"),
                      buildCard("Botol pelembab berisi air steril/ aquadest"),
                      buildCard("Selang O2"),
                      buildCard("Plester"),
                      buildCard("Kapas Alkohol"),
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
                      buildCard("Atur posisi semifoler"),
                      buildCard("Selang dihubungkan"),
                      buildCard("Sebelum memasang slang pada hidung pasien slang dibersihkan dahulu dengankapasa alkohol"),
                      buildCard("Flowmeter dibuka, dicoba pada punggung tangan lalu ditutup kembali"),
                      buildCard("Memasang canul hidung, lakukan fixasi (plester)"),
                      buildCard("Membuka flowmeter kembali dengan ukuran sesuai advis dokter "),
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
