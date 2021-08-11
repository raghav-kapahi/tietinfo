// @dart=2.9
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'loadingscreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'description.dart';
import 'dart:math';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:slider_button/slider_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(tietinfo());
}

String overview =
    'The Thapar Institute of Engineering and Technology (TIET) is one of India\'s oldest and finest educational institutions, '
    'which provides a steady source of highly skilled talent to the nation as well as overseas.Founded in 1956 with a campus spread across sprawling 250 acres,Thapar Institute of Engineering & Technology, located in Patiala, has been a pioneer in engineering education, research and innovation. Our community involves ingenious minds solvers who are eager to make the world a better place to live in with their innovative techniques and discoveries.';
String mission =
    'Thapar Institute of Engineering & Technology, which comprises of inter-disciplinary exploration and invention, has contributed to many technological advancements and scientific breakthroughs within India and beyond. The teaching pedagogy employed for the engineering programmes offered at Thapar Institute of Engineering & Technology reflects the long held ethos, which advocate that engineering education should be broad-based and should enable students to develop their professional careers, while finding solutions for the unseen challenges that lie ahead.Our sole mission is to provide a scholarly and professional environment that enables our faculty, students and staff to make lasting contributions to the advancement of learning. We aim to be dynamic, innovative and flexible in devising academic programmes, structures and mechanisms. We believe in carrying out cutting-edge research and development for the benefit of society.';

class tietinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tietinfofirst(),
    );
  }
}

class tietinfofirst extends StatefulWidget {
  @override
  _tietinfoState createState() => _tietinfoState();
}

class _tietinfoState extends State<tietinfofirst> {
  double opacity = 0.0;
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home())));
    changeopacity();
  }

  changeopacity() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        //changeopacity();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.red],
              stops: [0.57, 0.57],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                      child: Image.asset(
                          'assets/images/TI_LOGO-removebg-preview.png')),
                ),
                SizedBox(
                  height: 140.0,
                ),
                AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds: 3),
                  child: Text(
                    'Your One Tap Info Application.',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'anm',
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

int _selectedIndex = 2;

class hostels extends StatefulWidget {
  @override
  _hostelState createState() => _hostelState();
}

class _hostelState extends State<hostels> {
  //int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        // Navigator.push(
        //  context, MaterialPageRoute(builder: (context) => study()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 2) {
        Navigator.pop(context);
        //  _selectedIndex = 1;
        // Navigator.push(
        //context, MaterialPageRoute(builder: (context) => home()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 3) {
        Navigator.pop(context);
        //  _selectedIndex = 1;
        // Navigator.push(
        //context, MaterialPageRoute(builder: (context) => cafes()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 4) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        //Navigator.push(
        //context, MaterialPageRoute(builder: (context) => societies()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F2E8),
      body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'BOYS HOSTELS',
                style: TextStyle(
                    fontFamily: 'ubn',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 40.0),
              ),
            ),
            Divider(
              thickness: 0.3,
              color: Colors.black,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL M', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelM_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelM_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelM_4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelM_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DESCRIPTION: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(M, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('1148 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL L', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelL_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelL_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelL_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(L, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('500-600 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL K', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img8.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelK_1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelK_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(K, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('500 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL J', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img2.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img7.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(J, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('962 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL H', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelH_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelH_diw.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelH_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelH_4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(H, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('480 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL C', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelC_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelC_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelC_4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(C, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('414 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL B', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelB_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelB_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelB_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(B, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('200-400 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL A', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelA_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelA_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(A, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('252 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'GIRLS HOSTELS',
                style: TextStyle(
                    fontFamily: 'ubn',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 40.0),
              ),
            ),
            Divider(
              thickness: 0.3,
              color: Colors.black,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL N', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img11.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelG_N_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelG_N_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelG_N_1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(N, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('499 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL I', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_i_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_i_3.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_i_4.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(I, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('407 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL PG', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelPG_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelPG_3.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/HostelPG_4.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(PG, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('402 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL G', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_G_1.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_G_3.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_G_4.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),
                          //2nd Image of Slider
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(G, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('222 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Color(0xffF5F7B2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 20.0,
              child: ExpansionTile(
                title: Text('HOSTEL E', style: textstyle),
                children: [
                  ListView(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_E_3.png"),
                                fit: BoxFit.fitWidth,
                                scale: 6.0,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/hostelG_E_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200.0,
                          //  enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1 / 10,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 100),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description: ',
                          style: headtext,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(E, style: desctext),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text('Capacity:   ', style: headtext),
                            Text('276 students', style: descctext),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel_outlined), label: 'Hostels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'Study Area'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_outlined),
              label: 'Cafes & Restros'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'Societies'),
        ],
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        selectedLabelStyle:
            TextStyle(fontFamily: 'KohoSem', fontWeight: FontWeight.w900),
      ),
    );
  }
}

class study extends StatefulWidget {
  @override
  _studyState createState() => _studyState();
}

class _studyState extends State<study> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      /* if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => secondpage()));
      } */
      if (index == 0) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        // Navigator.push(
        //  context, MaterialPageRoute(builder: (context) => hostels()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 2) {
        Navigator.pop(context);
        //_selectedIndex = 1;
        //Navigator.push(
        // context, MaterialPageRoute(builder: (context) => home()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }

      if (index == 3) {
        Navigator.pop(context);
        //  _selectedIndex = 1;
        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => cafes()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 4) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => societies()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
    });
  }

  List<_PlaceData> data = [
    _PlaceData('2013-2014', 1145, 968),
    _PlaceData('2014-2015', 1155, 1004),
    _PlaceData('2015-2016', 1268, 1073),
    _PlaceData('2016-2017', 1213, 1029),
    _PlaceData('2017-2018', 1345, 1137),
    _PlaceData('2018-2019', 1324, 1249),
    _PlaceData('2019-2020', 996, 971)
  ];
  void mylaunch() async {
    if (await canLaunch('https://thapar.edu/admissions')) {
      await launch('https://thapar.edu/admissions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F2E8),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10.0),
            color: Color(0xffE3F7EC),
            elevation: 15.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: SfCartesianChart(
                // borderWidth: 80.0,
                // plotAreaBorderWidth: 100.0,
                //  backgroundColor: Colors.blueGrey,
                margin: EdgeInsets.all(10.0),
                plotAreaBackgroundColor: Colors.white38,
                enableAxisAnimation: true,
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(text: 'Placement Analysis'),
                // Enable legend
                legend:
                    Legend(isVisible: true, position: LegendPosition.bottom),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CartesianSeries>[
                  ColumnSeries<_PlaceData, String>(
                    color: Colors.black,
                    dataSource: data,
                    xValueMapper: (_PlaceData sales, _) => sales.year,
                    yValueMapper: (_PlaceData sales, _) => sales.offered,
                    name: 'Students Offered',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                        alignment: ChartAlignment.far,
                        //color: Colors.red,
                        labelAlignment: ChartDataLabelAlignment.middle,
                        angle: 270),
                  ),
                  ColumnSeries<_PlaceData, String>(
                    color: Colors.tealAccent,
                    dataSource: data,
                    xValueMapper: (_PlaceData sales, _) => sales.year,
                    yValueMapper: (_PlaceData sales, _) => sales.placed,
                    name: 'Students Placed',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                        alignment: ChartAlignment.far,
                        //labelPosition: ChartDataLabelPosition.outside
                        labelAlignment: ChartDataLabelAlignment.middle,
                        angle: 270),
                  ),
                ]),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              'ADMISSIONS',
              style: TextStyle(
                  fontFamily: 'ubn',
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade800,
                  fontSize: 40.0),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.3,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              'For all admission related queries, Press the button below. ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'anm'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            height: 50.0,
            child: RaisedButton(
              color: Colors.yellow,
              child: ListTile(
                  minLeadingWidth: 75.0,
                  title: Center(
                      child: Text('Admission Portal', style: descctext))),
              onPressed: mylaunch,
              elevation: 20.0,
              splashColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              'NAVA NALANDA LIBRARY',
              style: TextStyle(
                  fontFamily: 'ubn',
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade800,
                  fontSize: 40.0),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.3,
          ),
          ListView(
            padding: EdgeInsets.only(top: 10.0),
            shrinkWrap: true,
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/lib_1.png"),
                        fit: BoxFit.fitWidth,
                        scale: 6.0,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/lib_2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/lib_3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/lib_4.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/lib_5.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/lib_6.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 200.0,
                  //  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 1 / 10,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 100),
                  viewportFraction: 1.0,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              lib,
              style: TextStyle(
                  color: Colors.black,
                  //overflow: TextOverflow.fade,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  //fontStyle: FontStyle.italic,
                  fontFamily: 'anm'),
            ),
          ),
        ],
        scrollDirection: Axis.vertical,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel_outlined), label: 'Hostels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'Study Area'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_outlined),
              label: 'Cafes & Restros'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'Societies'),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        elevation: 100.0,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
        // backgroundColor: Colors.,
        selectedLabelStyle:
            TextStyle(fontFamily: 'KohoSem', fontWeight: FontWeight.w900),
      ),
    );
  }
}

class _PlaceData {
  _PlaceData(this.year, this.offered, this.placed);

  final String year;
  final double offered;
  final double placed;
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  double opacity = 0.0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        //Navigator.push(
        // context, MaterialPageRoute(builder: (context) => study()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 0) {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 3) {
        Navigator.pop(context);
        //  Navigator.push(
        //context, MaterialPageRoute(builder: (context) => cafes()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 4) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        //  Navigator.push(
        //context, MaterialPageRoute(builder: (context) => societies()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    changeopacity();
  }

  void changeopacity() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        //changeopacity();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F2E8),
      body: Container(
        child: SafeArea(
          child: ListView(
            children: [
              ListView(
                padding: EdgeInsets.only(top: 10.0),
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img9.png"),
                            fit: BoxFit.fitWidth,
                            scale: 6.0,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img10.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img12.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img8.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img7.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img6.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/iimg5.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img4.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/img11.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 200.0,
                      //  enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 1 / 10,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 200),
                      viewportFraction: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(
                  'OVERVIEW',
                  style: TextStyle(
                      fontFamily: 'ubn',
                      fontWeight: FontWeight.w500,
                      color: Colors.red.shade800,
                      fontSize: 40.0),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  overview,
                  style: TextStyle(
                      color: Colors.black,
                      //overflow: TextOverflow.fade,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      //fontStyle: FontStyle.italic,
                      fontFamily: 'anm'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(
                  'MISSION',
                  style: TextStyle(
                      fontFamily: 'ubn',
                      fontWeight: FontWeight.w500,
                      color: Colors.red.shade900,
                      fontSize: 40.0),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  mission,
                  style: TextStyle(
                      color: Colors.black,
                      //overflow: TextOverflow.fade,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      // fontStyle: FontStyle.italic,
                      fontFamily: 'anm'),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  'NOTE: The images used in the slider are clicked by the students of TIET.',
                  style: TextStyle(
                      color: Colors.black,
                      //overflow: TextOverflow.fade,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      fontFamily: 'anm'),
                ),
              )
            ],
            scrollDirection: Axis.vertical,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel_outlined), label: 'Hostels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'Study Area'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_outlined),
              label: 'Cafes & Restros'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'Societies'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        // backgroundColor: Colors.,
        selectedLabelStyle:
            TextStyle(fontFamily: 'KohoSem', fontWeight: FontWeight.w900),
      ),
    );
  }
}

class cafes extends StatefulWidget {
  @override
  _cafesState createState() => _cafesState();
}

class _cafesState extends State<cafes> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 1) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        //Navigator.push(
        // context, MaterialPageRoute(builder: (context) => study()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 2) {
        Navigator.pop(context);
        //_selectedIndex = 1;
        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => home()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 0) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        // Navigator.push(
        //context, MaterialPageRoute(builder: (context) => hostels()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 4) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        // Navigator.push(
        //  context, MaterialPageRoute(builder: (context) => societies()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
    });
  }

  List<String> num = [
    'tel:09115508001',
    'tel:09501972435',
    'tel:09115508001',
    'tel:09592576576',
    'tel:09256500064',
    'tel:9988763722',
  ];
  void launche(int n) async {
    if (n == 1) {
      if (await canLaunch(num[0])) {
        await launch(num[0]);
      } else {
        throw 'Cannot dial the number';
      }
    }
    if (n == 2) {
      if (await canLaunch(num[1])) {
        await launch(num[1]);
      } else {
        throw 'Cannot dial the number';
      }
    }
    if (n == 3) {
      if (await canLaunch(num[2])) {
        await launch(num[2]);
      } else {
        throw 'Cannot dial the number';
      }
    }
    if (n == 4) {
      if (await canLaunch(num[3])) {
        await launch(num[3]);
      } else {
        throw 'Cannot dial the number';
      }
    }
    if (n == 5) {
      if (await canLaunch(num[4])) {
        await launch(num[4]);
      } else {
        throw 'Cannot dial the number';
      }
    }
    if (n == 6) {
      if (await canLaunch(num[5])) {
        await launch(num[5]);
      } else {
        throw 'Cannot dial the number';
      }
    }
    if (n == 7) {
      if (await canLaunch(num[6])) {
        await launch(num[6]);
      } else {
        throw 'Cannot dial the number';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F2E8),
      body: ListView(
        children: [
          Container(
            //color: Colors.white,
            height: 350.0,
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  insetPadding: EdgeInsets.only(bottom: 100.0),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Nice place with hygienic food. All the dishes are at same price either 90 or 120.',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'It is that one place on the campus which never lets you down when it comes to their classics. Their Chicken Monster Burger, Chicken Rice Bowl, Chicken Temptation Sandwich, Paneer Monster Burger and Ocean Breeze are a must try if you haven\'t already. And their Cappuccino works wonders on a cold day!',
                            style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.call, color: Colors.red),
                        title: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text('09115508001', style: descctext),
                          ),
                          onPressed: () async {
                            await launche(1);
                          },
                          elevation: 15.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              color: Color(0xffF5F7B2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 50.0,
                      child: Image.asset('assets/images/jujur.png')),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('Jujus Cafe', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('COS Market', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('3.6', style: mytext),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 350.0,
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  insetPadding: EdgeInsets.only(bottom: 50.0),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'They have a good variety of wraps and other snacks, you guys should try it. They have good taste under a good price. Also their service quality is good. The staff is almost fine but not much good. They have a great ambience and a good seating capacity too.Totally recommended.',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Pocket friendly cafe with superb taste must try oreo shake and wraps by the way chalupa is some mexican dish which is very good crispy doh with vegies on top of it',
                            style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.call, color: Colors.red),
                        title: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text('09501972435', style: descctext),
                          ),
                          onPressed: () async {
                            await launche(2);
                          },
                          elevation: 15.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              color: Color(0xffF5F7B2),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/wrapchik.png')),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('Wrapchik', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('COS Market', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('4.5', style: mytext),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 350.0,
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Color(0xffF5F7B2),
              elevation: 20.0,
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  insetPadding: EdgeInsets.only(bottom: 400.0),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text('Nice Food', style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Good place to eat and hang out with friends.',
                            style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(Icons.fastfood_outlined,
                          color: Colors.black, size: 30.0)),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('Chill & Grill', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('COS Market', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('3.4', style: mytext),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 350.0,
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Color(0xffF5F7B2),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: EdgeInsets.only(bottom: 300.0),
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Great place.The best and the most reasonable food in the menu is the mumbo jumbo sandwich.Great value for money',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Nice place to eat and have fun with a change of taste...',
                            style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.call, color: Colors.red),
                        title: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text('09592576576', style: descctext),
                          ),
                          onPressed: () async {
                            await launche(4);
                          },
                          elevation: 15.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(Icons.fastfood_outlined,
                          color: Colors.black, size: 30.0)),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('Sips and Bites', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('COS Market', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('4.5', style: mytext),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            height: 350.0,
            child: RaisedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: EdgeInsets.only(bottom: 200.0),
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Loved the place. They have live music too on different occasions which adds to the spark. Nice cozy place to eat around. Love the coolers and coffee. The pizzas there are fully self made and taste enhancers. Must visit.',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Pizza\'s are real tasty and cheesy. Garlic bread is equally nice. Must visit place.',
                            style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.call, color: Colors.red),
                        title: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text('09256500064', style: descctext),
                          ),
                          onPressed: () async {
                            await launche(5);
                          },
                          elevation: 15.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              color: Color(0xffF5F7B2),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Image.asset(
                        'assets/images/pizza.png',
                        //scale: 1.0,
                        height: 300.0,
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('Pizza Nation', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('COS Market', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('3.8', style: mytext),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            height: 350.0,
            child: RaisedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: EdgeInsets.only(bottom: 100.0),
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Great taste and cleaniness.It\'s cheap and has good taste.You can eat a thali in Rs 40.My pesonal favorite  here is Oreo shake which is of Rs 40 too.'
                            'The packed and bakery products have slightly higher cost because it\'s the only shop that sells these products in COS complex. Also the bakery products  are not fresh at times.',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Great place for Non Vegetarian sandwiches and baked veg items.',
                            style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.call, color: Colors.red),
                        title: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text('09988763722', style: descctext),
                          ),
                          onPressed: () async {
                            await launche(6);
                          },
                          elevation: 15.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              color: Color(0xffF5F7B2),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(Icons.fastfood_outlined,
                          color: Colors.black, size: 30.0)),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('Hot Express', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('COS Market', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('3.9', style: mytext),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 350.0,
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Color(0xffF5F7B2),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: EdgeInsets.only(bottom: 400.0),
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text('Comfortable place for light snacks.',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text('Always the best.', style: descctext),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/gblock.png',
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('G-BLOCK CAFETERIA', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('G-BLOCK', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('4.8', style: mytext),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            height: 350.0,
            child: RaisedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: EdgeInsets.only(bottom: 100.0),
                  backgroundColor: Color(0xffF3F2E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Center(child: Text('Reviews', style: headdtext)),
                  content: Column(
                    children: [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Thapar Cafeteria is a one stop place to sit and munch. It has everything from a small piece of cake to Veg Thali- it has all.'
                            ' The taste of food is really good at reasonable prices. The service is good there and the staff is very responsive.',
                            style: descctext),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        title: Text(
                            'Very typical college experience, cool 90s music and the cheese sandwich and brownie is to die for. Cheap and tasty.',
                            style: descctext),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Center(
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              color: Color(0xffF5F7B2),
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(Icons.fastfood_outlined,
                          color: Colors.black, size: 30.0)),
                  ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    title: Text('MAIN CAFETERIA', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    title: Text('Admin Block', style: mytext),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffF1D74D),
                    ),
                    title: Text('4.2', style: mytext),
                  )
                ],
              ),
            ),
          )
        ],
        scrollDirection: Axis.vertical,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel_outlined), label: 'Hostels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'Study Area'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_outlined),
              label: 'Cafes & Restros'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'Societies'),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        elevation: 100.0,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
        // backgroundColor: Colors.,
        selectedLabelStyle:
            TextStyle(fontFamily: 'KohoSem', fontWeight: FontWeight.w900),
      ),
    );
  }
}

class societies extends StatefulWidget {
  @override
  _societiesState createState() => _societiesState();
}

class _societiesState extends State<societies> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 1) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        //  Navigator.push(
        // context, MaterialPageRoute(builder: (context) => study()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 2) {
        Navigator.pop(context);
        //_selectedIndex = 1;
        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => home()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 0) {
        Navigator.pop(context);
        // _selectedIndex = 1;
        // Navigator.push(
        //context, MaterialPageRoute(builder: (context) => hostels()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
      if (index == 3) {
        Navigator.pop(context);
        //  _selectedIndex = 1;
        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => cafes()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loading()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F2E8),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Frosh Society', style: headtext),
                          content: Text(frosh, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/Frosh.jpg'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Creative Computing Society',
                              style: headtext),
                          content: Text(ccs, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/CCS.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('ENACTUS', style: headtext),
                          content: Text(enac, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/enactus.jpeg'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('EDC', style: headtext),
                          content: Text(edc, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/edc.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('FAPS', style: headtext),
                          content: Text(faps, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/faps.jpg'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('GirlUp TIET Society', style: headtext),
                          content: Text(gir, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/girl.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('TAAS', style: headtext),
                          content: Text(taas, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/taas.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('TUMUN', style: headtext),
                          content: Text(mun, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/tumun.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Adventure Club', style: headtext),
                          content: Text(adc, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/adc.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Toastmasters Club', style: headtext),
                          content: Text(tos, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/tos.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title:
                              Text('Developer Student Club', style: headtext),
                          content: Text(dsc, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/DSC.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('TIET Fitness Club', style: headtext),
                          content: Text(tfc, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/TFC.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Dance Club NOX', style: headtext),
                          content: Text(nox, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/nox.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('TEDx TIET', style: headtext),
                          content: Text(tedx, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/tedx.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('ACM', style: headtext),
                          content: Text(acm, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/acm.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Rotaract Club', style: headtext),
                          content: Text(rot, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/rot.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('OWASP', style: headtext),
                          content: Text(ows, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/owsp.png'),
                  elevation: 20),
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  //margin: EdgeInsets.all(9.0),
                  // clipBehavior: Clip.hardEdge,
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xffF3F2E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          title: Text('Microsoft Student Chapter',
                              style: headtext),
                          content: Text(msc, style: desctext),
                          actions: <Widget>[
                            Center(
                              child: RaisedButton(
                                color: Colors.yellow,
                                onPressed: () => Navigator.pop(context),
                                child: Text('Close'),
                                elevation: 12.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  child: Image.asset('assets/images/msc.png'),
                  elevation: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel_outlined), label: 'Hostels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'Study Area'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_outlined),
              label: 'Cafes & Restros'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'Societies'),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        elevation: 100.0,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
        // backgroundColor: Colors.,
        selectedLabelStyle:
            TextStyle(fontFamily: 'KohoSem', fontWeight: FontWeight.w900),
      ),
    );
  }
}

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  void myfunc() async {
    if (_selectedIndex == 0) {
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => hostels()));
      });
    }
    if (_selectedIndex == 1) {
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => study()));
      });
    }
    if (_selectedIndex == 2) {
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home()));
      });
    }
    if (_selectedIndex == 3) {
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => cafes()));
      });
    }
    if (_selectedIndex == 4) {
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => societies()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    myfunc();
    return Scaffold(
        backgroundColor: Color(0xffF3F2E8),
        body: SpinKitPouringHourglass(
          color: Colors.red,
          duration: Duration(milliseconds: 1000),
        ));
  }
}

class back extends StatefulWidget {
  @override
  _backState createState() => _backState();
}

class _backState extends State<back> {
  Future<bool> onbackpress() async {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onbackpress,
      child: Scaffold(
        appBar: AppBar(
          title: Text("my_eaxmple"),
        ),
      ),
    );
  }
}
