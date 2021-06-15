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
  Future postData() async {
    // final String pathUrl = 'https://jsonplaceholder.typicode.com/posts';
    final String pathUrl = 'http://10.0.2.2:3000/add';

    dynamic data = {
      'nama_perawat': 'Sena with flutter',
    };
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
    TextEditingController input1 = TextEditingController();
    TextEditingController input2 = TextEditingController();
    TextEditingController input3 = TextEditingController();

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
    Widget buildTF(var ht, TextEditingController ctrl) {
      return TextField(
        controller: ctrl,
        decoration: InputDecoration(
          // border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 30),
          icon: Icon(
            Icons.person,
            color: cYellow,
          ),
          labelText: ht,
        ),
      );
    }

    // my whiteboard
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: cWhite,
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text("SMART SOP",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Divider(
                color: Colors.grey,
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              buildTF('Nama Perawat', input1),
              buildTF('Nama Pasien', input2),
              buildTF('Nomor RM', input3),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: cYellow,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                onPressed: () async {
                  print('Posting data...');
                  await postData().then((value) {
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
                child: Text("Masuk"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
