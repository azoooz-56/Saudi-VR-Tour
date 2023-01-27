import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:panorama/panorama.dart';
import 'package:vr_tour_hackthon/main.dart';

class DicePage2 extends StatefulWidget {
  const DicePage2({key}) : super(key: key);

  @override
  DicePage2State createState() => DicePage2State();
}

class DicePage2State extends State<DicePage2> {
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