import 'package:flutter/material.dart';

import 'indicaciones.dart';

  class BitacoraPreActividad extends StatelessWidget {
  const BitacoraPreActividad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as bitacoraPreActividadArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Bitacora PreActividad'),
      ),
      body: Center(
        child: ElevatedButton(
              child: Text('Siguiente'),
              onPressed: () {
                _showIndicaciones(context);
              }),
      ),
    );
  }
}

void _showIndicaciones(BuildContext context) {
  final bitacora =
  ModalRoute.of(context)!.settings.arguments as bitacoraPreActividadArguments;

  Navigator.of(context).pushNamed(
      "/indicaciones",
      arguments: indicacionesArguments(
          esfuerzoInicial: bitacora.esfuerzoInicial,
          esfuerzoPostCalentamiento: 'Algo pesado'
      ));
}

class bitacoraPreActividadArguments {
  String esfuerzoInicial;
  bitacoraPreActividadArguments({required this.esfuerzoInicial});
}