import 'package:flutter/material.dart';

//Criando uma instânica
main () => runApp(PerguntaApp());
                          // Chamando a herança de Widget
class PerguntaApp extends StatelessWidget {

  var perguntaSelecionada = 1;

  void responder(){
  perguntaSelecionada ++;
  print(perguntaSelecionada);
}

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  @override      //Criando método build
  Widget build(BuildContext context) {
    //Criando uma instância
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
         ],
        ),
      ),
    );
  }
}