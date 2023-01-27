

import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF103755),

      ),
      body: Center(
        child: Text(
          'Demonstration',
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          //unselectedItemIconColor: Color(0xFF103755),
          unselectedItemLabelColor: Color(0xFF103755),
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: true,
          barHeight: 70,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: 'الفعاليات',
            selectedBackgroundColor: Color(0xFF103755),
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: 'الاماكن السياحية',
            selectedBackgroundColor: Color(0xFF103755),
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'الرحلات',
            selectedBackgroundColor: Color(0xFF103755),
          ),
        ],
      ),
    );
  }
}

// class PlacesPage extends StatefulWidget {
//   //const PlacesPage({Key? key}) : super(key: key);
//
//   @override
//   _PlacesPageState createState() => _PlacesPageState();
// }
//
// class _PlacesPageState extends State<PlacesPage> with TickerProviderStateMixin {
//
//   @override
//   Widget build(BuildContext context) {
//     int selectedIndex = 0;
//     return Scaffold(
//       backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text('azooz'),
//           backgroundColor: Color(0xFF103755),
//         ),
//       bottomNavigationBar: FFNavigationBar(
//         theme: FFNavigationBarTheme(
//           barBackgroundColor: Colors.white,
//           selectedItemBorderColor: Colors.transparent,
//           selectedItemBackgroundColor: Colors.green,
//           selectedItemIconColor: Colors.white,
//           selectedItemLabelColor: Colors.black,
//           showSelectedItemShadow: false,
//           barHeight: 70,
//         ),
//         selectedIndex: selectedIndex,
//         onSelectTab: (index) {
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//         items: [
//           FFNavigationBarItem(
//             iconData: Icons.calendar_today,
//             label: 'Bar Theme',
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.people,
//             label: 'Orange',
//             selectedBackgroundColor: Colors.orange,
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.attach_money,
//             label: 'Purple',
//             selectedBackgroundColor: Colors.purple,
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.note,
//             label: 'Blue',
//             selectedBackgroundColor: Colors.blue,
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.settings,
//             label: 'Red Item',
//             selectedBackgroundColor: Colors.red,
//
//           ),
//         ],
//       ),);
//   }
// }

