import 'package:flutter/material.dart';

import 'bitacora_preActividad.dart';

  class VideoCalentamiento extends StatelessWidget {
  const VideoCalentamiento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as bitacoraInicialArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calentamiento'),
      ),
      body: Center(
          child: Column( children: [
            Text('Video / Instrucciones de calentamiento'),
            ElevatedButton(
                child: Text('Siguiente'),
                onPressed: () {
                  _showBitacoraPreActividad(context);
                })
          ])
      ),
    );
  }
}

void _showBitacoraPreActividad(BuildContext context) {
  final bitacora =
  ModalRoute.of(context)!.settings.arguments as bitacoraInicialArguments;

  Navigator.of(context).pushNamed("/bitacoraPreActividad",
      arguments: bitacoraPreActividadArguments(esfuerzoInicial: bitacora.esfuerzoInicial));
}

class bitacoraInicialArguments {
  String esfuerzoInicial;
  bitacoraInicialArguments({required this.esfuerzoInicial});
}