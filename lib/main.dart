import 'package:flutter/material.dart';

//Criando uma instânica
main () => runApp(PerguntaApp());

void responder(){
  print('Pergunta respondida!!!');
}

                          // Chamando a herança de Widget
class PerguntaApp extends StatelessWidget {
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
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Resposta 2 foi selecionada!');
              },
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3!!!'),
            ),
         ],
        ),
      ),
    );
  }
}