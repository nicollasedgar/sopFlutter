/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopInfus/mainDrawer.dart';

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
            RadioListTile(value: 1, title: Text("Sudah"), groupValue: data, onChanged: null),
            RadioListTile(value: 0, title: Text("Belum"), groupValue: data, onChanged: null),
          ],
        )
      ),
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
                      buildCard("Set infuse Cairan sesuai program medic"),
                      buildCard("Jarum infuse dengan ukuran yang sesuai"),
                      buildCard("Pengalas"),
                      buildCard("Torniket"),
                      buildCard("Kapas alcohol"),
                      buildCard("Plester"),
                      buildCard("Gunting"),
                      buildCard("Kasa steril"),
                      buildCard("Betadin"),
                      buildCard("Sarung tangan"),
                      SizedBox(height: 20,),
                      Text(
                        "Pelaksanaan Tindakan",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20,),
                      buildCard("Petugas menjelaskan prosedur yang akan dilakukan"),
                      buildCard("Petugas mencuci tangan"),
                      buildCard("Petugas menghubungkan cairan dan infus set dengan memasukkan ke bagian karet atau akses selang ke botol infuse"),
                      buildCard("Petugas mengisi cairan ke dalam set infus dengan menekan ruang tetesan hingga terisi sebagian"),
                      buildCard("Petugas membuka klem selang hingga cairan memenuhi selang dan udara selang keluar"),
                      buildCard("Petugas meletakkan pangalas di bawah tempat (vena) yang akan dilakukan penginfusan"),
                      buildCard("Petugas melakukan pembendungan dengan torniket (karet pembendung) 10-12 cm di atas tempat penusukan"),
                      buildCard("Petugas menganjurkan pasien untuk menggenggam dengan gerakan sirkular (bila sadar)"),
                      buildCard("Petugas menggunakan sarung tangan steril"),
                      buildCard("Petugas mendesinfeksi daerah yang akan ditusuk dengan kapas alcoho"),
                      buildCard("Petugas melakukan penusukan pada vena dengan meletakkan ibu jari di bagian bawah vena dan posisi jarum (abocath) mengarah ke atas"),
                      buildCard("Petugas memperhatikan keluarnya darah melalui jarum (abocath/surflo)"),
                      buildCard("Petugas menarik keluar bagian dalam (jarum) sambil meneruskan tusukan ke dalam vena, Setelah jarum infus bagian dalam dilepaskan atau dikeluarkan"),
                      buildCard("Petugas menahan bagian atas vena dengan menekan menggunakan jari tangan agar darah tidak keluar."),
                      buildCard("Petugas menghubungkan/menyambungkan bagian infus dengan selang infuse"),
                      buildCard("Petugas membuka pengatur tetesan dan atur kecepatan sesuai dengan dosis yang diberikan"),
                      buildCard("Petugas melakukan fiksasi dengan kasa steril"),
                      buildCard("petugas menuliskan tanggal dan waktu pemasangan infus serta mencatat ukuran jarum"),
                      buildCard("Petugas melepaskan sarung tangan dan cuci tangan"),
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

