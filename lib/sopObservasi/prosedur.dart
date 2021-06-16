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
      data13,
      data14,
      data15,
      data16,
      data17;
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
                      Card(
                        child: ListTile(
                            title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Penderita gawat harus di observasi"),
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
                            Text("Observasi dilakukan tiap 5 – 15 menit sesuai"),
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
                            Text("Observasi dilakukan oleh paramedis perawat, bila perlu oleh dokter"),
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
                            Text("Keadaan umum penderita’"),
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
                            Text("Kesadaran penderita"),
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
                            Text("Kelancaran jalan nafas air"),
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
                            Text("Kelancaran pemberian O2"),
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
                            Text("Tanda-tanda vital: Tensi"),
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
                            Text("Tanda-tanda vital: Nadi"),
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
                            Text("Tanda-tanda vital: Suhu"),
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
                            Text("Tanda-tanda vital: Pernafasan"),
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
                            Text("Apabila hasil observasi menunjukkan keadaan penderita semakin tidak baik maka paramedis perawat harus lapor kepada Dokter yang sedang bertugas (diluar jam kerja telepon"),
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
                            Text("Apabila kasus penyakitnya diluar kemampuan Dokter UGD maka perlu dirujuk"),
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
                            Text("Observasi dilakukan maksimal 2 jam, selanjutnya diputuskan penderita bisa pulangatau rawat inap"),
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
                            Text("Perkembangan penderita selama observasi dicatat di kartu status penderita (les UGD) / lembar observasi"),
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
                            Text("Setelah observasi tentukan apakah penderita perlu : rawat jalan / rawat inap"),
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
                            Text("Rujuk"),
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
                      // buildCard("Penderita gawat harus di observasi"),
                      // buildCard("Observasi dilakukan tiap 5 – 15 menit sesuai"),
                      // buildCard("Observasi dilakukan oleh paramedis perawat, bila perlu oleh dokter."),
                      // buildCard("Keadaan umum penderita’"),
                      // buildCard("Kesadaran penderita"),
                      // buildCard("Kelancaran jalan nafas air"),
                      // buildCard("Kelancaran pemberian O2"),
                      // buildCard("Tanda-tanda vital: Tensi"),
                      // buildCard("Tanda-tanda vital: Nadi"),
                      // buildCard("Tanda-tanda vital: Suhu"),
                      // buildCard("Tanda-tanda vital: Pernafasan"),
                      // buildCard("Apabila hasil observasi menunjukkan keadaan penderita semakin tidak baik maka paramedis perawat harus lapor kepada Dokter yang sedang bertugas (diluar jam kerja telepon)."),
                      // buildCard("Apabila kasus penyakitnya diluar kemampuan Dokter UGD maka perlu dirujuk"),
                      // buildCard("Observasi dilakukan maksimal 2 jam, selanjutnya diputuskan penderita bisa pulangatau rawat inap."),
                      // buildCard("Perkembangan penderita selama observasi dicatat di kartu status penderita (les UGD) / lembar observasi"),
                      // buildCard("Setelah observasi tentukan apakah penderita perlu : rawat jalan / rawat inap"),
                      // buildCard("Rujuk"),
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
                                  data17 ;
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
