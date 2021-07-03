import 'package:flutter/material.dart';
// import 'terimadata.dart';
import 'daftarSmartSop.dart';
import 'constants.dart';
import 'package:dio/dio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Variable
  var a = '';
  Dio dio = new Dio();

  // Method Customize
  Future postData(dynamic data) async {
    final String pathUrl = 'https://senuyydev.herokuapp.com/add';

    var response = await dio.post(pathUrl,
        data: data,
        options: Options(headers: {
          'Content-type': 'application/json; charset=UTF-8',
        }));

    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    // Controller
    TextEditingController nama_perawat_ctrl = TextEditingController();
    TextEditingController nama_pasien_ctrl = TextEditingController();
    TextEditingController nomor_rm_ctrl = TextEditingController();

    // root container
    Widget buildContainer(var teks) {
      return Container(
        color: Colors.indigo,
        margin: EdgeInsets.all(10),
        height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Text(teks)],
        ),
      );
    }

    // widget text field
    Widget buildTF(var ht, TextEditingController ctrl, IconData icon) {
      return TextField(
        controller: ctrl,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: Color(0XFFFFBE03),
          ),
          hintText: ht,
          filled: true,
          fillColor: Colors.grey[200],
        ),
      );
    }

    Widget buildTF2(var ht, TextEditingController ctrl) {
      return TextField(
        controller: ctrl,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          icon: Icon(
            Icons.person,
            color: Color(0XFFFFBE03),
          ),
          labelText: ht,
        ),
      );
    }

    // my whiteboard
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nurse.jpg'),
                fit: BoxFit.cover
              )
            ),
        // color: Color(0xff8F1AAA),
        height: double.infinity,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: [
                  Divider(
                    indent: 40,
                    endIndent: 20,
                  ),
                  Image(image: AssetImage('images/stikes.png')),
                  Text("SMART SOP",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFFEAECEA))),
                ]),
                Center(
                  child: Text(
                    "Oleh : Arlin Woda S.Kep",
                    style: TextStyle(fontSize: 15, color: Color(0XFFEAECEA)),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                buildTF('Nama Perawat', nama_perawat_ctrl, Icons.person),
                SizedBox(
                  height: 25,
                ),
                buildTF('Nama Pasien', nama_pasien_ctrl, Icons.person_add),
                SizedBox(
                  height: 25,
                ),
                buildTF('Nomor RM', nomor_rm_ctrl, Icons.house),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0XFFFFBE03),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  onPressed: () async {
                    if (nama_perawat_ctrl.text.isEmpty ||
                        nama_pasien_ctrl.text.isEmpty ||
                        nomor_rm_ctrl.text.isEmpty) {
                      final snackBar = SnackBar(
                          content: Text('Isi semua data terlebih dahulu!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      return;
                    }
                    ;
                    print('Posting data...');
                    dynamic _dataPost = {
                      'nama_perawat': nama_perawat_ctrl.text,
                      'nama_pasien': nama_pasien_ctrl.text,
                      'nomor_rm': nomor_rm_ctrl.text,
                    };

                    await postData(_dataPost).then((value) {
                      var _id = value['id'];
                      print(value['id']);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Daftar(
                                  id: _id,
                                )),
                      );
                    });
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(color: Color(0XFFEAECEA)),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0XFFFFBE03),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    final snackBar = SnackBar(content: Text('Button Pressed!'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  },
                  child: Text(
                    "Lihat Data",
                    style: TextStyle(color: Color(0XFFEAECEA)),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
