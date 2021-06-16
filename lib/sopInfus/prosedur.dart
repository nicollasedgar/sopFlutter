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
      data24,
      data25,
      data26,
      data27,
      data28,
      data29,
      data30;
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
    data25 = "";
    data26 = "";
    data27 = "";
    data28 = "";
    data29 = "";
    data30 = "";
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
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Set infuse Cairan sesuai program medic"),
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
                            Text("Jarum infuse dengan ukuran yang sesuai"),
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
                            Text("Pengalas"),
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
                            Text("Torniket"),
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
                            Text("Kapas alcohol"),
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
                            Text("Plester"),
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
                            Text("Gunting"),
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
                            Text("Kasa steril"),
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
                            Text("Betadin"),
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
                            Text("Sarung tangan"),
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
                      SizedBox(height: 20,),
                      Text(
                        "Pelaksanaan Tindakan",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20,),
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Petugas menjelaskan prosedur yang akan dilakukan"),
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
                            Text("Petugas mencuci tangan"),
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
                            Text("Petugas menghubungkan cairan dan infus set dengan memasukkan ke bagian karet atau akses selang ke botol infuse"),
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
                            Text("Petugas mengisi cairan ke dalam set infus dengan menekan ruang tetesan hingga terisi sebagian"),
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
                            Text("Petugas membuka klem selang hingga cairan memenuhi selang dan udara selang keluar"),
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
                            Text("Petugas meletakkan pangalas di bawah tempat (vena) yang akan dilakukan penginfusan"),
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
                            Text("Petugas melakukan pembendungan dengan torniket (karet pembendung) 10-12 cm di atas tempat penusukan"),
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
                            Text("Petugas menganjurkan pasien untuk menggenggam dengan gerakan sirkular (bila sadar"),
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
                            Text("Petugas menggunakan sarung tangan steril"),
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
                            Text("Petugas mendesinfeksi daerah yang akan ditusuk dengan kapas alcoho"),
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
                            Text("Petugas melakukan penusukan pada vena dengan meletakkan ibu jari di bagian bawah vena dan posisi jarum (abocath) mengarah ke atas"),
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
                            Text("Petugas memperhatikan keluarnya darah melalui jarum (abocath/surflo"),
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
                            Text("Petugas menarik keluar bagian dalam (jarum) sambil meneruskan tusukan ke dalam vena, Setelah jarum infus bagian dalam dilepaskan atau dikeluarkan"),
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
                            Text("Petugas menahan bagian atas vena dengan menekan menggunakan jari tangan agar darah tidak keluar"),
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
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Petugas menghubungkan/menyambungkan bagian infus dengan selang infuse"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data25,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data25 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data25,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data25 = value;
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
                            Text("Petugas membuka pengatur tetesan dan atur kecepatan sesuai dengan dosis yang diberikan"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data26,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data26 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data26,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data26 = value;
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
                            Text("Petugas melakukan fiksasi dengan kasa steril"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data27,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data27 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data27,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data27 = value;
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
                            Text("petugas menuliskan tanggal dan waktu pemasangan infus serta mencatat ukuran jarum"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data28,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data28 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data28,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data28 = value;
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
                            Text("Petugas melepaskan sarung tangan dan cuci tangan"),
                            RadioListTile(
                                value: "1",
                                title: Text("Sudah"),
                                groupValue: data29,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data29 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data29,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data29 = value;
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
                                groupValue: data30,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data30 = value;
                                  });
                                }),
                            RadioListTile(
                                value: "0",
                                title: Text("Belum"),
                                groupValue: data30,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  print("Radio $value");
                                  setState(() {
                                    data30 = value;
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
                                  data24 +
                                  data25 +
                                  data26 +
                                  data27 +
                                  data28 +
                                  data29 +
                                  data30 ;
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

