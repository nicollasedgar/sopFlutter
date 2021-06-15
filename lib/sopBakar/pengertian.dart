/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/sopBakar/mainDrawer.dart';
import 'package:smart_sop/constants.dart';

/// This is the stateful widget that the main application instantiates.
class PengertianBakar extends StatefulWidget {
  @override
  State<PengertianBakar> createState() => _PengertianBakarState();
}

/// This is the private State class that goes with PengertianBakar.
class _PengertianBakarState extends State<PengertianBakar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text("Perawatan Luka Bakar", style: TextStyle(color: cYellow),),
      ),
      endDrawer: MainDrawer(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Pengertian",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10,),
                Text(
                    "Luka bakar adalah luka yang terjadi akibat sentuhan permukaan tubuh dengan benda-benda yang menghasilkan panas (misalnya : api, air panas, listrik) atau zat yang bersifat membakar (misalnya: asam kuat dan basa kuat).",
                    style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
