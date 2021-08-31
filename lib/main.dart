import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';


//Criando uma instânica
main () => runApp(PerguntaApp());
                          
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto','Vermelho','Verde','Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho','Cobra','Elefante','Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria','João','Leo','Pedro'],
    }
  ];

  void _responder(){
    if (temPerguntaSelecionada){
    setState(() {
    _perguntaSelecionada ++;   
       });
      }
    }

    bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override      //Criando método build
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
        ? Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada, 
          quandoResponder: _responder,
        )
        : Resuldado(),
      ),
    );
  }
}                         
                          // Chamando a herança de Widget
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}