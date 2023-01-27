import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_tour_hackthon/models/destination_model.dart';
import 'package:vr_tour_hackthon/pages/detail/widgets/activities_events.dart';
import 'package:vr_tour_hackthon/pages/detail/widgets/activity_list_item.dart';
import 'package:vr_tour_hackthon/pages/detail/widgets/image_stack.dart';

class InfoEvents extends StatefulWidget {
  //final Activity2 destination;

  // infoEvents({Key? key, required this.destination})
  //     : super(key: key);

  @override
  State<InfoEvents> createState() => _InfoEventsState();
}

class _InfoEventsState extends State<InfoEvents> {
  int num = 1;

  //Widget acive = ActivityListItem(activity: activities[4]);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    return Scaffold(
      body: Material(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ImageStack2(
                size: double.infinity,
              )),
              Expanded(
                  child: Container(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          'ايام مكة للبرمجة',
                          style:
                              TextStyle(fontSize: 40, color: Color(0xFF103755)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'مسابقة برمجية لطلاب وطالبات جامعات منطقة مكة المكرمة، تحت رعاية امير منطقة مكة خالد الفيصل، وهي احدي فعاليات ملتقى ايام مكة۔',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Expanded(
                          child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      'للتواصل',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF103755),
                                      borderRadius:
                                          BorderRadius.circular(40.0)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    'الموقع',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  )),

                                  decoration: BoxDecoration(
                                      color: Color(0xFF103755),
                                      borderRadius: BorderRadius.circular(40.0)),
                                ),
                              ),
                            ),
                          ],
                        ))
                    ],
                  ),
                ),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0)),
              ))
            ],
          ),),
    );
  }
}
