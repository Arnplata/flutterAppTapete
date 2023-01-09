import 'package:flutter/material.dart';
import 'package:untitled/pages/video_calentamiento.dart';

class BitacoraInicial extends StatelessWidget {
  const BitacoraInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bitacora Pre-Actividad'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Siguiente'),
          onPressed: () {
            _showCalentamiento(context);
          },
        ),
      ),
    );
  }
}

void _showCalentamiento(BuildContext context) {
  Navigator.of(context).pushNamed("/videoCalentamiento",
      arguments: bitacoraInicialArguments(esfuerzoInicial: "reposo"));
}

