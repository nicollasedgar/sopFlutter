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
                        "Prosedur",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCard("Penderita gawat harus di observasi"),
                      buildCard("Observasi dilakukan tiap 5 – 15 menit sesuai"),
                      buildCard("Observasi dilakukan oleh paramedis perawat, bila perlu oleh dokter."),
                      buildCard("Keadaan umum penderita’"),
                      buildCard("Kesadaran penderita"),
                      buildCard("Kelancaran jalan nafas air"),
                      buildCard("Kelancaran pemberian O2"),
                      buildCard("Tanda-tanda vital: Tensi"),
                      buildCard("Tanda-tanda vital: Nadi"),
                      buildCard("Tanda-tanda vital: Suhu"),
                      buildCard("Tanda-tanda vital: Pernafasan"),
                      buildCard("Apabila hasil observasi menunjukkan keadaan penderita semakin tidak baik maka paramedis perawat harus lapor kepada Dokter yang sedang bertugas (diluar jam kerja telepon)."),
                      buildCard("Apabila kasus penyakitnya diluar kemampuan Dokter UGD maka perlu dirujuk"),
                      buildCard("Observasi dilakukan maksimal 2 jam, selanjutnya diputuskan penderita bisa pulangatau rawat inap."),
                      buildCard("Perkembangan penderita selama observasi dicatat di kartu status penderita (les UGD) / lembar observasi"),
                      buildCard("Setelah observasi tentukan apakah penderita perlu : rawat jalan / rawat inap"),
                      buildCard("Rujuk"),
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
