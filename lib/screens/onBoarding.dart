import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:utawi_iku_ngaji/screens/login.dart';
import 'package:utawi_iku_ngaji/screens/register.dart';

class OnBoarding extends StatelessWidget {
  final List slideContent = [
    {
      "title": "Dapatkan Pelajaran Pesantren",
      "subtitle": "pelajaran dapat di akses dengan mudah",
      "src": "assets/img/3.png"
    },
    {
      "title": "Dapatkan Pelajaran Pesantren",
      "subtitle": "pelajaran dapat di akses dengan mudah",
      "src": "assets/img/5.png"
    },
    {
      "title": "Dapatkan Pelajaran Pesantren",
      "subtitle": "pelajaran dapat di akses dengan mudah",
      "src": "assets/img/7.png"
    },
    {
      "title": "Dapatkan Pelajaran Pesantren",
      "subtitle": "pelajaran dapat di akses dengan mudah",
      "src": "assets/img/8.png"
    },
    // {
    //   "title": "Dapatkan Pelajaran Pesantren",
    //   "subtitle": "pelajaran dapat di akses dengan mudah",
    //   "src": "assets/img/front1.png"
    // },
    // {
    //   "title": "Dapatkan Informasi Event",
    //   "subtitle": "dapatkan informasi event",
    //   "src": "assets/img/front2.png"
    // },
    // {
    //   "title": "Diajar Oleh Guru Profesional",
    //   "subtitle": "user mendapatkan guru profesional",
    //   "src": "assets/img/fron3.png"
    // },
    // {
    //   "title": "Jadilah Anak Sholeha",
    //   "subtitle": "Akses semua pelajaran agama islam",
    //   "src": "assets/img/front4.png"
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 300.0,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0)),
                color: Colors.grey[300]),
            child: Swiper(
              itemCount: slideContent.length,
              autoplay: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        slideContent[i]["title"],
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 20.0),
                      ),
                      SizedBox(height: 15.0),
                      Text(slideContent[i]["subtitle"],
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.black87)),
                      SizedBox(height: 30.0),
                      Image.asset(slideContent[i]["src"], height: 450.0)
                    ],
                  ),
                );
              },
              pagination: SwiperPagination(),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 300.0,
            alignment: Alignment.center,
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                MaterialButton(
                  height: 50.0,
                  minWidth: MediaQuery.of(context).size.width - 20.0,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.pink,
                  splashColor: Colors.pinkAccent,
                  highlightColor: Colors.redAccent,
                  child: Text("REGISTRATION"),
                ),
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(24.0)),
                  child: MaterialButton(
                    height: 50.0,
                    minWidth: MediaQuery.of(context).size.width - 20.0,
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    splashColor: Colors.grey[50],
                    highlightColor: Colors.grey[100],
                    textColor: Colors.blueAccent,
                    child: Text("LOGIN NOW"),
                  ),
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.grey,
                  child: Text("Services of Terms"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
