
import 'package:flutter/material.dart';

import 'city.dart';

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

class StarterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF103755),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CityPage();
          }));
        },
        child: Text("تسجيل دخول",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final logupButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF103755),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("تسجيل جديد",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VR Tour'),
        backgroundColor: Color(0xFF103755),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.values[0],
        children: [
          Container(
            // height: double.infinity,
            // width: double.infinity, // it will take half screen
            child: Hero(
              // Hero is used for shared animation transaction
              tag: 'images/Untitled-7 copy.jpg',
              // tag should be same as parent
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                child: Image.asset(
                  'images/Untitled-7 copy.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //Image.asset('images/Untitled-7 copy.jpg',height: 400,),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.white,
              child: loginButon,
              height: 70,
              width: 300,
              //margin: EdgeInsets.only(bottom: 40,left: 60,right: 60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: logupButon,
              height: 70,
              width: 300,
              //margin: EdgeInsets.only(bottom: 40,left: 60,right: 60),
            ),
          ),
        ],
      ),
    );
  }
}
