import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopLuka/pengertian.dart';
import 'package:smart_sop/sopLuka/tujuan.dart';
import 'package:smart_sop/sopLuka/unitTerkait.dart';
import 'package:smart_sop/sopLuka/prosedur.dart';

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
              'Perawatan Luka \n with id : $id',
              style: TextStyle(
                color: cYellow,
                fontSize: 24,
              ),
            ),
          ),
          buildList("Pengertian", Icons.info, PengertianLuka(id: id)),
          buildList("Tujuan", Icons.moving, Tujuan()),
          buildList("Prosedur", Icons.settings, Prosedur(id: id)),
          buildList("Unit terkait", Icons.link, UnitTerkait()),
        ],
      ),
    );
  }
}
