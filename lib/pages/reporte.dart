import 'package:flutter/material.dart';

class Reporte extends StatelessWidget {
  const Reporte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bitacora =
    ModalRoute.of(context)!.settings.arguments as reporteArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Reporte'),
      ),
      body: Center(
        child: Column( children: [
          Text('Esfuerzo Inicial: ${bitacora.esfuerzoInicial}'),
          Text('Esfuerzo Post Calentamiento: ${bitacora.esfuerzoPostCalentamiento}'),
          Text('Tiempo Inicial: ${bitacora.tiempoInicial}'),
          Text('Tiempo Final: ${bitacora.tiempoFinal}'),
          Text('Tiempo Total: {Resta entre ambos tiempos}'),

          ElevatedButton(
              child: Text('Terminar y enviar'),
              onPressed: () {
                _enviarActividad(context);
              })
        ]),
      ),
    );
  }
}

void _enviarActividad(BuildContext context) {
  final actividad =
  ModalRoute.of(context)!.settings.arguments as reporteArguments;
}

class reporteArguments {
  String esfuerzoInicial;
  String esfuerzoPostCalentamiento;
  String tiempoInicial;
  String tiempoFinal;
  String esfuerzoPostActividad;
  String estadoDeAnimo;
  reporteArguments({
    required this.esfuerzoInicial,
    required this.esfuerzoPostCalentamiento,
    required this.tiempoInicial,
    required this.tiempoFinal,
    required this.esfuerzoPostActividad,
    required this.estadoDeAnimo
  });
}




















