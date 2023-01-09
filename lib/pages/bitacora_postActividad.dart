import 'package:flutter/material.dart';

import 'enfriamiento.dart';

class BitacoraPostActividad extends StatelessWidget {
  const BitacoraPostActividad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as BitacoraPostActividadArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Bitacora Post Actividad'),
      ),
      body: Center(
        child:
          ElevatedButton(
              child: Text('Siguiente'),
              onPressed: () {
                _showEnfriamiento(context);
              }),
      ),
    );
  }
}

void _showEnfriamiento(BuildContext context) {
  final bitacora =
  ModalRoute.of(context)!.settings.arguments as BitacoraPostActividadArguments;
  Navigator.of(context).pushNamed(
      "/enfriamiento",
      arguments: enfriamientoArguments(
          esfuerzoInicial: bitacora.esfuerzoInicial,
          esfuerzoPostCalentamiento: bitacora.esfuerzoPostCalentamiento,
          tiempoInicial: "1638592424384",
          tiempoFinal: "1638592424384",
          esfuerzoPostActividad: 'Pesado',
          estadoDeAnimo: '4',
      ));
}

class BitacoraPostActividadArguments {
  String esfuerzoInicial;
  String esfuerzoPostCalentamiento;
  String tiempoInicial;
  String tiempoFinal;
  BitacoraPostActividadArguments({
    required this.esfuerzoInicial,
    required this.esfuerzoPostCalentamiento,
    required this.tiempoInicial,
    required this.tiempoFinal,
  });
}




















