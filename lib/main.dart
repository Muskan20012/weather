// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
//import 'package:glassmorphism/glassmorphism.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:simple_shadow/simple_shadow.dart';

void main() {
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  Card temp(int icon, String info, String data) {
    return Card(
      color: Color(0xff7f77f9),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black12),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SimpleShadow(
                child: Image.asset(
                  './assets/$icon.png',
                  width: 20,
                  height: 20,
                ),
                opacity: 0.5, // Default: 0.5
                color: Colors.black, // Default: Black
                offset: Offset(3, 3), // Default: Offset(2, 2)
                sigma: 2, // Default: 2
              ),
              Text(
                data,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Volkhov',
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0), //position of shadow
                        blurRadius: 6.0, //blur intensity of shadow
                        color: Colors.black
                            .withOpacity(0.8), //color of shadow with opacity
                      ),
                    ]),
              ),
              Text(
                info,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Volkhov',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card sun(String sunrise, String sunset) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: SizedBox(
        height: 80,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sunrise,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Volkhov',
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Sunrise',
                    style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Volkhov',
                    ),
                  ),
                ],
              ),
              SimpleShadow(
                child: Image.asset('./assets/sunrise.png'),
                opacity: 0.3, // Default: 0.5
                color: Colors.black, // Default: Black
                offset: Offset(3, 3), // Default: Offset(2, 2)
                sigma: 2, // Default: 2
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sunset,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Volkhov',
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Sunset',
                    style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Volkhov',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff7f77f9),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: 360,
                height: 600,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: "Search",
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 30,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0), //position of shadow
                                blurRadius: 6.0, //blur intensity of shadow
                                color: Colors.black.withOpacity(
                                    0.8), //color of shadow with opacity
                              ),
                            ],
                          ),
                          Text(
                            'Raipur',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Volkhov',
                              shadows: [
                                Shadow(
                                  offset: Offset(2.0, 2.0), //position of shadow
                                  blurRadius: 6.0, //blur intensity of shadow
                                  color: Colors.black.withOpacity(
                                      0.8), //color of shadow with opacity
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                      SimpleShadow(
                        child: Image.asset(
                          './assets/cloudy.png',
                          height: 150,
                          width: 150,
                        ),
                        opacity: 0.5, // Default: 0.5
                        color: Colors.black, // Default: Black
                        offset: Offset(3, 3), // Default: Offset(2, 2)
                        sigma: 2, // Default: 2
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '26',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: 'Volkhov',
                                shadows: [
                                  Shadow(
                                    offset:
                                        Offset(2.0, 2.0), //position of shadow
                                    blurRadius: 6.0, //blur intensity of shadow
                                    color: Colors.black.withOpacity(
                                        0.8), //color of shadow with opacity
                                  ),
                                ]),
                          ),
                          Text(
                            '\u2103',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Volkhov',
                              shadows: [
                                Shadow(
                                  offset: Offset(2.0, 2.0), //position of shadow
                                  blurRadius: 6.0, //blur intensity of shadow
                                  color: Colors.black.withOpacity(
                                      0.8), //color of shadow with opacity
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Partly Cloudy',
                        style: TextStyle(
                            fontFamily: 'Volkhov',
                            fontSize: 30,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0), //position of shadow
                                blurRadius: 6.0, //blur intensity of shadow
                                color: Colors.black.withOpacity(
                                    0.8), //color of shadow with opacity
                              ),
                            ]),
                      ),
                      sun('5:55 AM', '6:30 PM'),
                    ],
                  ),
                ),
              ),
              SlidingUpPanel(
                header: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            temp(1, 'Wind', '5km/h'),
                            temp(2, 'Humidity', '35%'),
                            temp(3, 'Pressure', '512 hpa'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            temp(4, 'Good', 'AQI'),
                            temp(5, 'UV', '5'),
                            temp(6, 'Visibility', '6km'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                panel: Text(
                  '.',
                  style: TextStyle(fontSize: 1),
                ),
                minHeight: 150,
                maxHeight: 350,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 3.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
