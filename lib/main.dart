import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

//Criando uma instânica
main () => runApp(PerguntaApp());
                          
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder(){
  setState(() {
  _perguntaSelecionada ++;   
  });
  }

    @override      //Criando método build
  Widget build(BuildContext context) {
  final List<Map<String, Object>> perguntas = [
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

  List<Widget> respostas = [];
  for (String textoResp in perguntas [_perguntaSelecionada].cast()['respostas']) {
    respostas.add(Resposta(textoResp, _responder));
  }
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
         ],
        ),
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