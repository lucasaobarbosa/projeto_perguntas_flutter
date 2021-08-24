import 'package:flutter/material.dart';

//Criando uma instânica
main () => runApp(PerguntaApp());

                          // Chamando a herança de Widget
class PerguntaApp extends StatelessWidget {

  @override      //Criando método build
  Widget build(BuildContext context) {
    //Criando uma instância
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Olá Flutter!!!'),
      ),
    );
  }
}