/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';
import 'package:smart_sop/sopOksigen/mainDrawer.dart';
import 'package:smart_sop/constants.dart';

/// This is the stateful widget that the main application instantiates.
class PengertianOksigen extends StatefulWidget {
  @override
  State<PengertianOksigen> createState() => _PengertianOksigenState();
}

/// This is the private State class that goes with PengertianOksigen.
class _PengertianOksigenState extends State<PengertianOksigen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPurple,
        iconTheme: IconThemeData(color: cYellow),
        title: Text("Memberikan Oksigen", style: TextStyle(color: cYellow),),
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
                    "Terapi oksigen adalah tindakan medis untuk menyalurkan oksigen ke dalam tubuh lewat alat bantu. Tujuannya adalah kadar oksigen di dalam tubuh tercukupi sehingga fungsi organ berjalan lancar. Pada tingkat sel, oksigen dibutuhkan oleh mitokondria untuk menghasilkan energi.",
                    style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
