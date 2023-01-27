import 'package:flutter/material.dart';
import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  List<Activity2> activities2;
  List<Activity3> activities3;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
    required this.activities2,
    required this.activities3,

  });
}

class Activity2 {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Activity2({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
}

class Activity3 {
  String imageUrl;
  String name;
  String type;
  String type2;
  int num;
  List<String> startTimes;
  int rating;
  int price;

  Activity3({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.type2,
    required this.num,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
}

List<Activity3> activities3 = [
  Activity3(
    imageUrl: 'images/trip1.png',
    name: 'اطياف للسياحة',
    type: 'رحلة بحرية',
    type2: ' زيارة جزيرة بياضة',
    num: 5,
    startTimes: ['6:00 am', '12:00 pm'],
    rating: 5,
    price: 150,
  ),
  Activity3(
    imageUrl: 'images/trip2.jpg',
    name: 'كابرو للسياحة',
    type: 'رحلة ترفيهية',
    type2: 'ملاهي الشلال وبرنامج كوميدي',
    num: 6,
    startTimes: ['5:00 pm','12:00am'],
    rating: 3,
    price: 130,
  ),
  Activity3(
    imageUrl: 'images/Jeddahimage1.jpg',
    name: 'اقلاع للسياحة',
    type: 'رحلة الى جدة التاريخية',
    type2: 'المعالم والاسواق التاريخية',
    num: 2,
    startTimes: ['5:00 pm','8:00am'],
    rating: 4,
    price: 100,
  ),
  Activity3(
    imageUrl: 'images/yam_beach-2_0.jpg',
    name: 'الفارس للسياحة',
    type: 'رحلة غوص',
    type2: 'رحلة غوص في شاطئ يام',
    num: 2,
    startTimes: ['6:00 am','12:00pm'],
    rating: 5,
    price: 100,
  ),
];


List<Activity2> activities2 = [
  Activity2(
    imageUrl: 'images/makkah2.jpg',
    name: 'ايام مكة للبرمجة',
    type: 'مسابقة يتنافس فيها الطلاب',
    startTimes: ['10:00 am', '7:00 pm'],
    rating: 5,
    price: 0,
  ),
  Activity2(
    imageUrl: 'images/events.jpg',
    name: 'معرض العطور',
    type: 'يعد معرض العطور الأضخم في الشرق الأوسط',
    startTimes: ['5:00 pm','12:00am'],
    rating: 3,
    price: 0,
  ),

  Activity2(
    imageUrl: 'images/mhrgan.jpg',
    name: 'مهرجان لوست لاند',
    type: 'اكبر مهرجان العاب ترفيهي في جدة',
    startTimes: ['4:00 pm', '3:00 am'],
    rating: 4,
    price: 100,
  ),
  Activity2(
    imageUrl: 'images/maram.jpeg',
    name: 'بسطة ماركت',
    type: 'مبادرة من غرفة جدة لدعم الأسواق الناشئة والأعمال التجارية',
    startTimes: ['5:00 pm','12:00am'],
    rating: 5,
    price: 100,
  ),
];

List<Activity> activities = [
  Activity(
    imageUrl: 'images/Jeddahimage1.jpg',
    name: 'جدة التاريخية',
    type: 'السياحة التراثية',
    startTimes: ['10:00 am', '12:00 am'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'images/Jeddahimage2.jpg',
    name: 'واجهة جدة البحرية',
    type: 'سياحة بحرية',
    startTimes: ['24/7'],
    rating: 4,
    price: 0,
  ),
  Activity(
    imageUrl: 'images/Jeddahimage4.png',
    name: 'مدينة الملك عبدالله',
    type: 'السياحة البحرية والترفيهية',
    startTimes: ['2:00 pm', '1:00 am'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'images/Jeddahimage3.jpg',
    name: 'حي جميل للفنون والابداع',
    type: 'السياحة الابداعية',
    startTimes: ['10:00 am', '6:00 pm'],
    rating: 5,
    price: 100,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/venice.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      activities: activities,
      activities2: activities2,
      activities3: activities3),
  Destination(
      imageUrl: 'assets/images/paris.jpg',
      city: 'Paris',
      country: 'France',
      description: 'Visit Paris for an amazing and unforgettable adventure.',
      activities: activities,
      activities2: activities2,
      activities3: activities3),
  Destination(
      imageUrl: 'assets/images/newdelhi.jpg',
      city: 'New Delhi',
      country: 'India',
      description:
          'Visit New Delhi for an amazing and unforgettable adventure.',
      activities: activities,
      activities2: activities2,
      activities3: activities3,),
  Destination(
      imageUrl: 'assets/images/saopaulo.jpg',
      city: 'Sao Paulo',
      country: 'Brazil',
      description:
          'Visit Sao Paulo for an amazing and unforgettable adventure.',
      activities: activities,
      activities2: activities2,
      activities3: activities3),
  Destination(
      imageUrl: 'assets/images/newyork.jpg',
      city: 'New York City',
      country: 'United States',
      description: 'Visit New York for an amazing and unforgettable adventure.',
      activities: activities,
      activities2: activities2,
      activities3: activities3),
];
