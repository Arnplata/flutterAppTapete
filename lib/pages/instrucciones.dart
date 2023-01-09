import 'package:flutter/material.dart';

class Instrucciones extends StatelessWidget {
  const Instrucciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Instrucciones'),
      ),
      body: Center(
        child:
          ElevatedButton(
          child: Text('Bitacora Inicial'),
          onPressed: () {
            _showBitacoraInicial(context);
          },
        ),
      ),
    );
  }
}

void _showBitacoraInicial(BuildContext context) {
  Navigator.of(context).pushNamed("/bitacoraInicial");
}