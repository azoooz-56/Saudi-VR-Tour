
import 'package:flutter/material.dart';
import 'package:vr_tour_hackthon/main.dart';

import '../../../infoEvents.dart';
import '../../../models/activity_model.dart';
import '../../../models/destination_model.dart';

class ActivityEvents extends StatefulWidget {
  final Activity2 activity;

  ActivityEvents({ Key? key, required this.activity}) : super(key: key);

  @override
  State<ActivityEvents> createState() => _ActivityEventsState();
}

class _ActivityEventsState extends State<ActivityEvents> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return InfoEvents();
          }));
        },
        child: Container(
          height: 170,
          width: double.infinity, // match_parent in android
          margin: EdgeInsets.only(left: 16, right: 16, top: 5),
          child: Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              margin: EdgeInsets.only(left: 130, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          width: 140,
                          child: Text(
                            widget.activity.name,
                            style: Theme.of(context).textTheme.headline2,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 28,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.activity.type,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 5),
                  getRatingView(widget.activity.rating),
                  SizedBox(height: 7),
                  getStringTimeRow(widget.activity.startTimes)
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: 30,
        top: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DicePage();
              }));
            },
            child: Image.asset(
              widget.activity.imageUrl,
              height: 140,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
    ]);
  }

  Row getStringTimeRow(List<String> startTimes) {
    return Row(
      children: startTimes
          .asMap()
          .entries
          .map((MapEntry key) => _buildContainer(key.value))
          .toList(),
    );
  }

  Row _buildContainer(String value) {
    return Row(children: <Widget>[
      Container(
        width: 80,
        height: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blueAccent[100]),
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        width: 15,
      )
    ]);
  }

  Text getRatingView(int rating) {
    String ratingString = "";
    for (int i = 0; i < rating; i++) {
      ratingString += "⭐";
    }
    return Text(ratingString);
  }
}

class ActionTour extends StatefulWidget {
  final Activity3 activity;

  ActionTour({ Key? key, required this.activity}) : super(key: key);

  @override
  State<ActionTour> createState() => _ActionTourState();
}

class _ActionTourState extends State<ActionTour> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DicePage();
          }));
        },
        child: Container(
          height: 170,
          width: double.infinity, // match_parent in android
          margin: EdgeInsets.only(left: 16, right: 16, top: 5),
          child: Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              margin: EdgeInsets.only(left: 130, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          width: 140,
                          child: Text(
                            widget.activity.name,
                            style: Theme.of(context).textTheme.headline2,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          )),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: Text(widget.activity.price.toString()+'\$',style: Theme.of(context).textTheme.headline2,),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 140,
                        child: Column(
                          children: [
                            Text(
                              widget.activity.type,
                              style: Theme.of(context).textTheme.headline3?.copyWith(
                                color: Colors.black,
                              ),
                              //textAlign: TextAlign.right,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              widget.activity.type2,
                              style: Theme.of(context).textTheme.headline3?.copyWith(
                                  color: Colors.black
                              ),
                              //textAlign: TextAlign.right,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(widget.activity.num.toString()+'/10'),
                          Icon(Icons.person,size: 20,),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  getRatingView(widget.activity.rating),
                  SizedBox(height: 7),
                  getStringTimeRow(widget.activity.startTimes)
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: 30,
        top: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DicePage();
              }));
            },
            child: Image.asset(
              widget.activity.imageUrl,
              height: 140,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
    ]);
  }

  Row getStringTimeRow(List<String> startTimes) {
    return Row(
      children: startTimes
          .asMap()
          .entries
          .map((MapEntry key) => _buildContainer(key.value))
          .toList(),
    );
  }

  Row _buildContainer(String value) {
    return Row(children: <Widget>[
      Container(
        width: 80,
        height: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blueAccent[100]),
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        width: 15,
      )
    ]);
  }

  Text getRatingView(int rating) {
    String ratingString = "";
    for (int i = 0; i < rating; i++) {
      ratingString += "⭐";
    }
    return Text(ratingString);
  }
}