import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopObservasi/pengertian.dart';
import 'package:smart_sop/sopObservasi/tujuan.dart';
import 'package:smart_sop/sopObservasi/unitTerkait.dart';
import 'package:smart_sop/sopObservasi/prosedur.dart';

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
              'Observasi Pasien Gawat',
              style: TextStyle(
                color: cYellow,
                fontSize: 24,
              ),
            ),
          ),
          buildList("Pengertian", Icons.info, PengertianObservasi()),
          buildList("Tujuan", Icons.moving, Tujuan()),
          buildList("Prosedur", Icons.settings, Prosedur()),
          buildList("Unit terkait", Icons.link, UnitTerkait()),
        ],
      ),
    );
  }
}
