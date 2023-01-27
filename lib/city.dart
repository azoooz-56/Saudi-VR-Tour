import 'package:flutter/material.dart';
import 'package:vr_tour_hackthon/main.dart';
import 'package:vr_tour_hackthon/models/destination_model.dart';
import 'package:vr_tour_hackthon/pages/detail/detail_page.dart';
import 'placesPage.dart';

class CityPage extends StatefulWidget {
  //const CityPage({Key? key}) : super(key: key);

  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('المدن'),
        backgroundColor: Color(0xFF103755),
      ),
      backgroundColor: Color(0xFFF4F3F8),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0)),
              child: Image.asset(
                'images/Untitled-7 copy.jpg',
                height: 250,
                width: double.infinity,
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'اسم المدينة',
                  style: TextStyle(
                    color: Color(0xFF103755).withOpacity(0.5),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 55),
                Icon(
                  Icons.search,
                  color: Color(0xFF103755),
                  size: 30,
                ),
                SizedBox(width: 10)
              ],
            ),
            height: 50,
            margin: EdgeInsets.only(top: 10, left: 70, right: 70),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50.0)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 175,
                            child: Stack(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      'الطائف',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("images/taif.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 175,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      'الرياض',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("images/riya.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 175,
                            child: Stack(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      'نيوم',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image: AssetImage("images/nuom.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DestinationDetailPage(
                                  destination: Destination(
                                      imageUrl: 'images/jeddah1.jpg',
                                      city: 'جدة',
                                      country: '',
                                      description:
                                          'Visit New York for an amazing and unforgettable adventure.',
                                      activities: activities,
                                      activities2: activities2,
                                      activities3: activities3),
                                );
                              }));
                            },
                            child: Container(
                              height: 175,
                              child: Stack(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        'جدة',
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: AssetImage("images/jeddah1.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0)),
            ),
          ),
        ],
      ),
    );
  }
}
