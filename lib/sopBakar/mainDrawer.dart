import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopBakar/pengertian.dart';
import 'package:smart_sop/sopBakar/tujuan.dart';
import 'package:smart_sop/sopBakar/unitTerkait.dart';
import 'package:smart_sop/sopBakar/prosedur.dart';

class MainDrawer extends StatelessWidget {
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => hal));
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
              'Perawatan Luka Bakar',
              style: TextStyle(
                color: cYellow,
                fontSize: 24,
              ),
            ),
          ),
          buildList("Pengertian", Icons.info, PengertianBakar()),
          buildList("Tujuan", Icons.moving, Tujuan()),
          buildList("Prosedur", Icons.settings, Prosedur()),
          buildList("Unit terkait", Icons.link, UnitTerkait()),
        ],
      ),
    );
  }
}
