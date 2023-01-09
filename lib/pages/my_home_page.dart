import 'package:flutter/material.dart';
import 'package:untitled/pages/instrucciones.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar segunda pantalla'),
          onPressed: () {
            _showInstrucciones(context);
          },
        ),
      ),
    );
  }

  void _showInstrucciones(BuildContext context) {
    Navigator.of(context).pushNamed("/instrucciones");
  }
}