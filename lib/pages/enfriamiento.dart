import 'package:flutter/material.dart';
import 'package:untitled/pages/reporte.dart';

class Enfriamiento extends StatelessWidget {
  const Enfriamiento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as enfriamientoArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Enfriamiento'),
      ),
      body: Center(
        child: Column( children: [
          Text("Indicaciones de enfriamiento"),
          ElevatedButton(
              child: Text('Siguiente'),
              onPressed: () {
                _showReporte(context);
              })
        ]),
      ),
    );
  }
}

void _showReporte(BuildContext context) {
  final bitacora =
  ModalRoute.of(context)!.settings.arguments as enfriamientoArguments;
  Navigator.of(context).pushNamed(
      "/reporte",
      arguments: reporteArguments(
          esfuerzoInicial: bitacora.esfuerzoInicial,
          esfuerzoPostCalentamiento: bitacora.esfuerzoPostCalentamiento,
          tiempoInicial: bitacora.tiempoInicial,
          tiempoFinal: bitacora.tiempoFinal,
          esfuerzoPostActividad: bitacora.esfuerzoPostActividad,
          estadoDeAnimo: bitacora.estadoDeAnimo
      ));
}

class enfriamientoArguments {
  String esfuerzoInicial;
  String esfuerzoPostCalentamiento;
  String tiempoInicial;
  String tiempoFinal;
  String esfuerzoPostActividad;
  String estadoDeAnimo;
  enfriamientoArguments({
    required this.esfuerzoInicial,
    required this.esfuerzoPostCalentamiento,
    required this.tiempoInicial,
    required this.tiempoFinal,
    required this.esfuerzoPostActividad,
    required this.estadoDeAnimo
  });
}




















