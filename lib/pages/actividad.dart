import 'package:flutter/material.dart';

import 'bitacora_postActividad.dart';

class Actividad extends StatelessWidget {
  const Actividad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as actividadArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Actividad'),
      ),
      body: Center(
        child: Column( children: [
          Text('Registro de actividad'),
          ElevatedButton(
              child: Text('Terminar Actividad'),
              onPressed: () {
                _showBitacoraPostActividad(context);
              })
        ]),
      ),
    );
  }
}

void _showBitacoraPostActividad(BuildContext context) {
  final bitacora =
  ModalRoute.of(context)!.settings.arguments as actividadArguments;
  Navigator.of(context).pushNamed(
      "/bitacoraPostActividad",
      arguments: BitacoraPostActividadArguments(
          esfuerzoInicial: bitacora.esfuerzoInicial,
          esfuerzoPostCalentamiento: bitacora.esfuerzoPostCalentamiento,
          tiempoInicial: "1638592424384",
          tiempoFinal: "1638992524484"
      ));
}

class actividadArguments {
  String esfuerzoInicial;
  String esfuerzoPostCalentamiento;
  actividadArguments({
    required this.esfuerzoInicial,
    required this.esfuerzoPostCalentamiento
  });
}




















