import 'package:flutter/material.dart';

import 'actividad.dart';

  class Indicaciones extends StatelessWidget {
  const Indicaciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as indicacionesArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Indicaciones'),
      ),
      body: Column( children: [
        Text('Instrucciones sobre como usar la captura de la actividad'),
        ElevatedButton(
            child: Text('Iniciar Actividad'),
            onPressed: () {
              _showActividad(context);
            })
      ]),
    );
  }
}

void _showActividad(BuildContext context) {
  final bitacora =
  ModalRoute.of(context)!.settings.arguments as indicacionesArguments;
  Navigator.of(context).pushNamed(
    "/actividad",
    arguments: actividadArguments(
        esfuerzoInicial: bitacora.esfuerzoInicial,
        esfuerzoPostCalentamiento: bitacora.esfuerzoPostCalentamiento
    ));
}

class indicacionesArguments {
  String esfuerzoInicial;
  String esfuerzoPostCalentamiento;
  indicacionesArguments({
    required this.esfuerzoInicial,
    required this.esfuerzoPostCalentamiento
  });
}




















