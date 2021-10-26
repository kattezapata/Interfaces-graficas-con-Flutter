import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    @required this.city,
    @required this.dateTime,
    @required this.temperature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Medellín',
    dateTime: '07:50 PM — Lunes, 18 Oct 2021',
    temperature: '24°C',
    weatherType: 'Noche',
    iconUrl: 'assets/moon.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'Bogotá',
    dateTime: '02:20 PM — Lunes, 18 Oct 2021',
    temperature: '15°C',
    weatherType: 'Nublado',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'New York',
    dateTime: '09:20 AM — Lunes, 18 Oct 2021',
    temperature: '17°C',
    weatherType: 'Soleado',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Sydney',
    dateTime: '01:20 AM — Martes, 19 Oct 2021',
    temperature: '10°C',
    weatherType: 'Lluvia',
    iconUrl: 'assets/rain.svg',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];
