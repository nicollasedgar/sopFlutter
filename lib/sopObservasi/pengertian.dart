/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/sopObservasi/mainDrawer.dart';
import 'package:smart_sop/constants.dart';

/// This is the stateful widget that the main application instantiates.
class PengertianObservasi extends StatefulWidget {
  final dynamic id;
  const PengertianObservasi({this.id});

  @override
  State<PengertianObservasi> createState() => _PengertianObservasiState();
}

/// This is the private State class that goes with PengertianObservasi.
class _PengertianObservasiState extends State<PengertianObservasi> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text(
          "Observasi Pasien Gawat",
          style: TextStyle(color: cYellow),
        ),
      ),
      endDrawer: MainDrawer(id: widget.id),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Pengertian \n with id = ${widget.id}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Memantau keadaan pasien gawat",
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
