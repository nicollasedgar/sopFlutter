/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopOksigen/mainDrawer.dart';
import 'package:dio/dio.dart';

/// This is the stateful widget that the main application instantiates.
class Prosedur extends StatefulWidget {
  final dynamic id;
  const Prosedur({this.id});

  @override
  State<Prosedur> createState() => _ProsedurState();
}

/// This is the private State class that goes with Prosedur.
class _ProsedurState extends State<Prosedur> {
  // Variable
  String data;
  String urut1,
      urut2,
      urut3,
      urut4,
      urut5,
      urut6,
      urut7,
      urut8,
      urut9,
      urut10,
      urut11,
      urut12,
      urut13,
      urut14,
      urut15,
      urut16,
      urut17;

  Dio dio = new Dio();

  // Method Customize
  Future postData(dynamic data) async {
    final String pathUrl = 'http://10.0.2.2:3000/sop_observasi';

    var response = await dio.post(pathUrl,
        data: data,
        options: Options(headers: {
          'Content-type': 'application/json; charset=UTF-8',
        }));

    return response.data;
  }

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
                        "Prosedur with id : ${widget.id}",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCard1("Penderita gawat harus di observasi"),
                      SizedBox(height: 5),
                      buildCard2(
                          "Observasi dilakukan tiap 5 – 15 menit sesuai"),
                      SizedBox(height: 5),
                      buildCard3(
                          "Observasi dilakukan oleh paramedis perawat, bila perlu oleh dokter."),
                      SizedBox(height: 5),
                      buildCard4("Keadaan umum penderita"),
                      SizedBox(height: 5),
                      buildCard5("Kesadaran penderita"),
                      SizedBox(height: 5),
                      buildCard6("Kelancaran jalan nafas air"),
                      SizedBox(height: 5),
                      buildCard7("Kelancaran pemberian O2"),
                      SizedBox(height: 5),
                      buildCard8("Tanda-tanda vital: Tensi"),
                      SizedBox(height: 5),
                      buildCard9("Tanda-tanda vital: Nadi"),
                      SizedBox(height: 5),
                      buildCard10("Tanda-tanda vital: Suhu"),
                      SizedBox(height: 5),
                      buildCard11("Tanda-tanda vital: Pernafasan"),
                      SizedBox(height: 5),
                      buildCard12(
                          "Apabila hasil observasi menunjukkan keadaan penderita semakin tidak baik maka paramedis perawat harus lapor kepada Dokter yang sedang bertugas (diluar jam kerja telepon)."),
                      SizedBox(height: 5),
                      buildCard13(
                          "Apabila kasus penyakitnya diluar kemampuan Dokter UGD maka perlu dirujuk"),
                      SizedBox(height: 5),
                      buildCard14(
                          "Observasi dilakukan maksimal 2 jam, selanjutnya diputuskan penderita bisa pulangatau rawat inap."),
                      SizedBox(height: 5),
                      buildCard15(
                          "Perkembangan penderita selama observasi dicatat di kartu status penderita (les UGD) / lembar observasi"),
                      SizedBox(height: 5),
                      buildCard16(
                          "Setelah observasi tentukan apakah penderita perlu : rawat jalan / rawat inap"),
                      SizedBox(height: 5),
                      buildCard17("Rujuk"),
                      SizedBox(height: 10),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: cYellow,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            try {
                              var data = urut1 +
                                  urut2 +
                                  urut3 +
                                  urut4 +
                                  urut5 +
                                  urut6 +
                                  urut7 +
                                  urut8 +
                                  urut9 +
                                  urut10 +
                                  urut11 +
                                  urut12 +
                                  urut13 +
                                  urut14 +
                                  urut15 +
                                  urut16 +
                                  urut17;

                              var dataPost = {'id': widget.id, 'data': data};

                              await postData(dataPost).then((value) {
                                if (value == true) {
                                  final snackBar = SnackBar(
                                    content: Text('Berhasil input data!'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                                return;
                              });
                            } catch (e) {
                              final snackBar = SnackBar(
                                  content:
                                      Text('Isi semua data terlebih dahulu!'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              return;
                            }
                          },
                          child: Text("KIRIM"),
                        ),
                      ),
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

  Widget buildCard1(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut1,
            onChanged: (value) {
              print(value);
              setState(() {
                urut1 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut1,
            onChanged: (value) {
              print(value);
              setState(() {
                urut1 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard2(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut2,
            onChanged: (value) {
              print(value);
              setState(() {
                urut2 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut2,
            onChanged: (value) {
              print(value);
              setState(() {
                urut2 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard3(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut3,
            onChanged: (value) {
              print(value);
              setState(() {
                urut3 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut3,
            onChanged: (value) {
              print(value);
              setState(() {
                urut3 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard4(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut4,
            onChanged: (value) {
              print(value);
              setState(() {
                urut4 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut4,
            onChanged: (value) {
              print(value);
              setState(() {
                urut4 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard5(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut5,
            onChanged: (value) {
              print(value);
              setState(() {
                urut5 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut5,
            onChanged: (value) {
              print(value);
              setState(() {
                urut5 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard6(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut6,
            onChanged: (value) {
              print(value);
              setState(() {
                urut6 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut6,
            onChanged: (value) {
              print(value);
              setState(() {
                urut6 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard7(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut7,
            onChanged: (value) {
              print(value);
              setState(() {
                urut7 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut7,
            onChanged: (value) {
              print(value);
              setState(() {
                urut7 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard8(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut8,
            onChanged: (value) {
              print(value);
              setState(() {
                urut8 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut8,
            onChanged: (value) {
              print(value);
              setState(() {
                urut8 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard9(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut9,
            onChanged: (value) {
              print(value);
              setState(() {
                urut9 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut9,
            onChanged: (value) {
              print(value);
              setState(() {
                urut9 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard10(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut10,
            onChanged: (value) {
              print(value);
              setState(() {
                urut10 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut10,
            onChanged: (value) {
              print(value);
              setState(() {
                urut10 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard11(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut11,
            onChanged: (value) {
              print(value);
              setState(() {
                urut11 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut11,
            onChanged: (value) {
              print(value);
              setState(() {
                urut11 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard12(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut12,
            onChanged: (value) {
              print(value);
              setState(() {
                urut12 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut12,
            onChanged: (value) {
              print(value);
              setState(() {
                urut12 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard13(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut13,
            onChanged: (value) {
              print(value);
              setState(() {
                urut13 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut13,
            onChanged: (value) {
              print(value);
              setState(() {
                urut13 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard14(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut14,
            onChanged: (value) {
              print(value);
              setState(() {
                urut14 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut14,
            onChanged: (value) {
              print(value);
              setState(() {
                urut14 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard15(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut15,
            onChanged: (value) {
              print(value);
              setState(() {
                urut15 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut15,
            onChanged: (value) {
              print(value);
              setState(() {
                urut15 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard16(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut16,
            onChanged: (value) {
              print(value);
              setState(() {
                urut16 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut16,
            onChanged: (value) {
              print(value);
              setState(() {
                urut16 = value;
              });
            },
          ),
        ],
      )),
    );
  }

  Widget buildCard17(var _teks) {
    return Card(
      child: ListTile(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_teks),
          RadioListTile(
            value: "1",
            title: Text("Sudah"),
            groupValue: urut17,
            onChanged: (value) {
              print(value);
              setState(() {
                urut17 = value;
              });
            },
          ),
          RadioListTile(
            value: "0",
            title: Text("Belum"),
            groupValue: urut17,
            onChanged: (value) {
              print(value);
              setState(() {
                urut17 = value;
              });
            },
          ),
        ],
      )),
    );
  }
}
