import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/weather_locations.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      locationList[index].city,
                      style: GoogleFonts.abel(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(locationList[index].dateTime,
                        style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationList[index].temperature,
                      style: GoogleFonts.abel(
                        fontSize: 85,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(locationList[index].iconUrl,
                            width: 34, height: 34, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(locationList[index].weatherType,
                            style: GoogleFonts.abel(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Viento',
                      style: GoogleFonts.abel(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(locationList[index].wind.toString(),
                        style: GoogleFonts.abel(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Text('km/h',
                        style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white38,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.greenAccent,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Lluvia',
                      style: GoogleFonts.abel(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(locationList[index].rain.toString(),
                        style: GoogleFonts.abel(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Text('%',
                        style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white38,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.redAccent,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Humedad',
                      style: GoogleFonts.abel(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(locationList[index].humidity.toString(),
                        style: GoogleFonts.abel(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Text('%',
                        style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white38,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.redAccent,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
