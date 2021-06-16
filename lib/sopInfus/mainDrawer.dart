import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopInfus/kebijakan.dart';
import 'package:smart_sop/sopInfus/pengertian.dart';
import 'package:smart_sop/sopInfus/referensi.dart';
import 'package:smart_sop/sopInfus/tujuan.dart';
import 'package:smart_sop/sopInfus/unitTerkait.dart';
import 'package:smart_sop/sopInfus/prosedur.dart';

class MainDrawer extends StatelessWidget {
  final dynamic id;
  const MainDrawer({this.id});

  @override
  Widget build(BuildContext context) {
    @override
    Widget buildList(var teks, IconData logo, var hal) {
      return ListTile(
        leading: Icon(
          logo,
          color: cYellow,
        ),
        title: Text(teks),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => hal));
        },
      );
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: cPurple,
            ),
            child: Text(
              'Pemasangan Infus with id: $id',
              style: TextStyle(
                color: cYellow,
                fontSize: 24,
              ),
            ),
          ),
          buildList("Pengertian", Icons.info, PengertianInfus()),
          buildList("Tujuan", Icons.moving, Tujuan()),
          buildList("Kebijakan", Icons.security, Kebijakan()),
          buildList("Referensi", Icons.bookmark, Referensi()),
          buildList("Prosedur", Icons.settings, Prosedur(id: id)),
          buildList("Unit terkait", Icons.link, UnitTerkait()),
        ],
      ),
    );
  }
}
