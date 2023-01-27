// @dart=2.9

import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vr_tour_hackthon/models/destination_model.dart';
import 'package:vr_tour_hackthon/pages/detail/widgets/activities_events.dart';
import 'package:vr_tour_hackthon/pages/detail/widgets/activity_list_item.dart';
import 'package:vr_tour_hackthon/pages/detail/widgets/image_stack.dart';

class DestinationDetailPage extends StatefulWidget {
  final Destination destination;

  DestinationDetailPage({this.destination});

  @override
  State<DestinationDetailPage> createState() => _DestinationDetailPageState();
}

class _DestinationDetailPageState extends State<DestinationDetailPage> {
  int num = 1;
  //Widget acive = ActivityListItem(activity: activities[4]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        selectedIndex: num,
        onSelectTab: (index) {
          setState(() {
            num = index;
            print(num);
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
      body: Material(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              ImageStack(destination: widget.destination,size: 225,),
              Expanded(
                child: MediaQuery.removePadding(
                  // for removing top default padding of listview
                  removeTop: true,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int position) {
                      if (num == 1) {
                        return ActivityListItem(activity: activities[position]);
                      }else if(num==0){
                        return ActivityEvents(activity: activities2[position]);
                        print(position);
                      }else{
                        return ActionTour(activity: activities3[position]);
                      }
                    },
                    itemCount: widget.destination.activities.length,
                  ),
                  context: context,
                ),
              )
            ],
          )),
    );
  }
}
