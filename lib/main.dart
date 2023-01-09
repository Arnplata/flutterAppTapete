import 'package:flutter/material.dart';
import 'package:untitled/pages/bitacora_inicial.dart';
import 'package:untitled/pages/bitacora_postActividad.dart';
import 'package:untitled/pages/bitacora_preActividad.dart';
import 'package:untitled/pages/enfriamiento.dart';
import 'package:untitled/pages/indicaciones.dart';
import 'package:untitled/pages/my_home_page.dart';
import 'package:untitled/pages/instrucciones.dart';
import 'package:untitled/pages/reporte.dart';
import 'package:untitled/pages/video_calentamiento.dart';
import 'package:untitled/pages/actividad.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: MyHomePage());
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const MyHomePage(),
        "/instrucciones": (BuildContext context) => const Instrucciones(),
        "/bitacoraInicial": (BuildContext context) => const BitacoraInicial(),
        "/videoCalentamiento": (BuildContext context) => const VideoCalentamiento(),
        "/bitacoraPreActividad": (BuildContext context) => const BitacoraPreActividad(),
        "/indicaciones": (BuildContext context) => const Indicaciones(),
        "/actividad": (BuildContext context) => const Actividad(),
        "/bitacoraPostActividad": (BuildContext context) => const BitacoraPostActividad(),
        "/enfriamiento": (BuildContext context) => const Enfriamiento(),
        "/reporte": (BuildContext context) => const Reporte(),
      },
    );
  }
}