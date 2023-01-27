// @dart=2.9

import "dart:math";
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:panorama/panorama.dart';
import 'starterPage.dart';
import 'city.dart';

int index = 0;
double lon = 0;

double lat = 0;

double tilt = 0;

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline3: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ),
      home: Scaffold(
        //appBar: AppBar(),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
          seconds: 1,
          navigateAfterSeconds: StarterPage(),
          image: Image.asset('images/logo.jpg'),
          backgroundColor: Colors.white,
          //styleTextUnderTheLoader: new TextStyle(),
          photoSize: 200.0,
          //onClick: ()=>print("Flutter Egypt"),
          loaderColor: const Color(0xFF103755)),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({key}) : super(key: key);

  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  @override
  final GlobalKey<State<StatefulWidget>> key = GlobalKey();

  Widget build(BuildContext context) {
    //initState2();
    Set<Image5> image = {
      Image5(
        nameImage: 'images/place1.jpg',
        arraws: [
          Hotspot(
              latitude: -17.0,
              longitude: 0.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place2.jpg',
        arraws: [
          Hotspot(
              latitude: -17.0,
              longitude: -5.0,
              width: 90,
              height: 75,
              widget: hotspotButton(

                icon: Icons.arrow_upward,
                onPressed: () => setState(() {
                  index++;
                }),
              )),
          Hotspot(
              latitude: -14.0,
              longitude: 177.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place3.jpg',
        arraws: [
          Hotspot(
              latitude: -12.0,
              longitude: -10.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index+=2),
              )),
          Hotspot(
              latitude: -12.0,
              longitude: 178.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index --),
              )),
          Hotspot(
              latitude: -12.0,
              longitude: -93.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
        ],
      ),
      Image5(
        nameImage: 'images/place4.jpg',
        arraws: [
          Hotspot(
              latitude: -12.0,
              longitude: 177.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place5.jpg',
        arraws: [
          Hotspot(
              latitude: -12.0,
              longitude: 4.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              ),),
          Hotspot(
            latitude: -12.0,
            longitude: -176.0,
            width: 90,
            height: 75,
            widget: hotspotButton(
              //text: "Next scene",
              icon: Icons.arrow_upward,
              onPressed: () => setState(() => index--),
            ),)
        ],
      ),
      Image5(
        nameImage: 'images/place6.jpg',
        arraws: [
          Hotspot(
              latitude: -12.0,
              longitude: -5.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
          Hotspot(
              latitude: -15.0,
              longitude: 174.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place7.jpg',
        arraws: [
          Hotspot(
              latitude: -14.0,
              longitude: -4.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
          Hotspot(
              latitude: -10.0,
              longitude: 170.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
          Hotspot(
              latitude: 6.0,
              longitude: -33.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: EvaIcons.alertCircleOutline,
                onPressed: () => setState(() {


                  AwesomeDialog(
                    context: context,

                    headerAnimationLoop: false,
                    dialogType: DialogType.NO_HEADER,
                    title: 'مسجد المعمار',
                    desc:
                    'يعد مسجد المعمار من أقدم المساجد في جدة التاريخية والمملكة، حيث تشير المصادر التاريخية إلى أن بناءه تم على يد أحد الولاة يدعى مصطفي معمار باشا، في العام 1263 هـ، وجدد في العام 1284 هـ.',
                    btnOkOnPress: () {
                      debugPrint('OnClcik');
                    },
                    btnOkColor: Color(0xFF103755),
                    btnOkIcon: Icons.check_circle,

                  ).show();


                }),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place8.jpg',
        arraws: [
          Hotspot(
              latitude: -17.0,
              longitude: 14.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
          Hotspot(
              latitude: -17.0,
              longitude: -168.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              ))

        ],
      ),
      Image5(
        nameImage: 'images/place9.jpg',
        arraws: [
          Hotspot(
              latitude: -5.0,
              longitude: -5.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
          Hotspot(
              latitude: -15.0,
              longitude: -55.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index+=2),
              )),
          Hotspot(
              latitude: -17.0,
              longitude: 144.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              )),
          Hotspot(
              latitude: 4.0,
              longitude: 25.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: EvaIcons.alertCircleOutline,
                onPressed: () => setState(() {
                  AwesomeDialog(
                    context: context,

                    headerAnimationLoop: false,
                    dialogType: DialogType.NO_HEADER,
                    title: 'بيت نصيف',
                    desc: ' من القصور التاريخية التي أُنشئت في مدينة جدة عام 1289هـ. بناه الشيخ عمر أفندي نصيف خلال 4 سنوات، وهو أحد الشواهد على النمط المعماري القديم في مدينة جدة,اكتسب أهمية تاريخية وسياسية باعتباره قديمًا قصر الضيافة لمن يزور الحجاز، فنزل فيه عدد من الملوك والأمراء',

                    btnOkOnPress: () {
                      debugPrint('OnClcik');
                    },
                    btnOkColor: Color(0xFF103755),
                    btnOkIcon: Icons.check_circle,

                  ).show();
                }),
              )),
        ],
      ),
      Image5(
        nameImage: 'images/place10.jpg',
        arraws: [
          Hotspot(
              latitude: -15.0,
              longitude: -165.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place11.jpg',
        arraws: [
          Hotspot(
              latitude: -15.0,
              longitude: -6.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index++),
              )),
          Hotspot(
              latitude: -15.0,
              longitude: -170.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index-=2),
              ))
        ],
      ),
      Image5(
        nameImage: 'images/place12.jpg',
        arraws: [
          Hotspot(
              latitude: -18.0,
              longitude: 61.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: Icons.arrow_upward,
                onPressed: () => setState(() => index--),
              )),
          Hotspot(
              latitude: 2.0,
              longitude: 0.0,
              width: 90,
              height: 75,
              widget: hotspotButton(
                //text: "Next scene",
                icon: EvaIcons.alertCircleOutline,
                onPressed: () => setState(() {
                  AwesomeDialog(
                    context: context,

                    headerAnimationLoop: false,
                    dialogType: DialogType.NO_HEADER,
                    title: 'بيت المتبولي',
                    desc: ' يعدّ بيت المتبولي التاريخي من البيوت التاريخية القديمة في المنطقة التاريخية حيث شيد قبل أكثر من 400 عام، ويتميز بالطراز العمراني ذات الطابع الحجازي القديم ليمثل نموذجا تميزت به بيوت جدة القديمة .',

                    btnOkOnPress: () {
                      debugPrint('OnClcik');
                    },
                    btnOkColor: Color(0xFF103755),
                    btnOkIcon: Icons.check_circle,

                  ).show();
                }),
              ))
        ],
      )
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF103755),
        title: Text('جدة التاريخية'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
              // //decoration: new BoxDecoration(color: Colors.white),
              // alignment: Alignment.center,
              // height: 240,
              child: image.elementAt(index)),
          Align(
              //alignment: Alignment.topLeft,
              //child: Text('${lon.toStringAsFixed(3)}, ${lat.toStringAsFixed(3)}, ${tilt.toStringAsFixed(3)}'),

              )
        ],
      ),
    );

    print('dfgdfg');
  }

  Widget hotspotButton({text, icon, onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Center(child: Text(text)),
              )
            : Container(),
      ],
    );
  }

  void changeValue(double longitude, double latitude) {
    lon = longitude;
    lat = latitude;
  }

  @override
  void initState2() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}

class Image5 extends StatefulWidget {
  String nameImage;
  List<Hotspot> arraws;

  Image5({ this.nameImage,  this.arraws});

  @override
  _Image5State createState() => _Image5State();
}

class _Image5State extends State<Image5> {
  SensorControl seensor = SensorControl.None;
  Color color = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Panorama(
          longitude: 0,
          latitude: 0,
          animSpeed: 0.00001,
          sensorControl: seensor,
          onViewChanged: onViewChanged,
          onTap: (longitude, latitude, tilt) =>
              print('onTap: $longitude, $latitude, $tilt'),
          onLongPressStart: (longitude, latitude, tilt) =>
              print('onLongPressStart: $longitude, $latitude, $tilt'),
          onLongPressMoveUpdate: (longitude, latitude, tilt) =>
              print('onLongPressMoveUpdate: $longitude, $latitude, $tilt'),
          onLongPressEnd: (longitude, latitude, tilt) =>
              print('onLongPressEnd: $longitude, $latitude, $tilt'),
          child: Image.asset(widget.nameImage),
          hotspots: widget.arraws

          // [
          //   Hotspot(
          //     latitude: -5.0,
          //     longitude: 37.0,
          //     width: 90,
          //     height: 75,
          //     widget: hotspotButton(text: "Next scene", icon: Icons.arrow_upward, onPressed: () => setState(() => index++)),
          //   ),]
          ),
      Align(
        alignment: Alignment.topLeft,
        child: Text('${lon.toStringAsFixed(3)}, ${lat.toStringAsFixed(3)} '),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            child: Text('VR'),
            backgroundColor: color,
            mini: true,
            onPressed: () {
              setState(() {
                if (seensor == SensorControl.None) {
                  seensor = SensorControl.Orientation;
                  color=Color(0xFF103755);
                } else {
                  seensor = SensorControl.None;
                  color=Colors.grey;
                }
              });
            },
          ),
        ),
      )
    ]);
  }

  Widget hotspotButton({text, icon, onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Center(child: Text(text)),
              )
            : Container(),
      ],
    );
  }

  void onViewChanged(longitude, latitude, tilt) {
    setState(() {
      lon = longitude;
      lat = latitude;
      tilt = tilt;
    });
  }
}
