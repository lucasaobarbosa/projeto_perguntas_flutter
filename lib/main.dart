import 'package:flutter/material.dart';

main () {
            //Criando uma instânica
  runApp(new PerguntaApp());

}
                          // Chamando a herança de Widget
class PerguntaApp extends StatelessWidget {

  //Criando método build
  Widget build(BuildContext context) {
    //Criando uma instância
    return MaterialApp(
      home: Text('Olá Flutter!'),
    );
  }
}