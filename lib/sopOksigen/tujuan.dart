/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopOksigen/mainDrawer.dart';

/// This is the stateful widget that the main application instantiates.
class Tujuan extends StatefulWidget {
  @override
  State<Tujuan> createState() => _TujuanState();
}

/// This is the private State class that goes with Tujuan.
class _TujuanState extends State<Tujuan> {
  String data;

  @override
  Widget buildCard(var teks) {
    return Card(child: ListTile(title: Text(teks)));
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Tujuan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10,),
                Text(
                    "Untuk memenuhi kebutuhan oksigen pada pasien",
                    style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
