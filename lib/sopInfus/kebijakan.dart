/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/constants.dart';
import 'package:smart_sop/sopInfus/mainDrawer.dart';

/// This is the stateful widget that the main application instantiates.
class Kebijakan extends StatefulWidget {
  @override
  State<Kebijakan> createState() => _KebijakanState();
}

/// This is the private State class that goes with Kebijakan.
class _KebijakanState extends State<Kebijakan> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text("Pemasangan Infus", style: TextStyle(color: cYellow),),
      ),
      endDrawer: MainDrawer(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Kebijakan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "SK Kepala Puskesmas Adiwerna",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
