import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontoTotal = 0;

  

  final _perguntas = const [
      {
        'texto': 'Qual é a minha cor favorita?',
        'respostas': [
        {'texto': 'Preto', 'ponto': 1}, 
         {'texto': 'Vermeho', 'ponto': 0}, 
         {'texto': 'Verde', 'ponto': 0}, 
         {'texto': 'Branco', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é o meu animal favorito?',
        'respostas': [
          {'texto':'Onça', 'ponto': 0}, 
          {'texto':'Cobra', 'ponto': 0}, 
          {'texto':'Cachorro', 'ponto': 1}, 
          {'texto':'Gato', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é minha comida favorita?',
        'respostas': [
          {'texto':'Lasanha', 'ponto': 0}, 
          {'texto':'Batata-frita', 'ponto': 0}, 
          {'texto':'Torta de limão', 'ponto': 1}, 
          {'texto':'Sorvete', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é o meu tipo de série preferido?',
        'respostas': [
        {'texto': 'Suspense', 'ponto': 1}, 
         {'texto': 'Ficção científica', 'ponto': 0}, 
         {'texto': 'Policiais', 'ponto': 0}, 
         {'texto': 'Comédia', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é o nome do meu cachorro?',
        'respostas': [
        {'texto': 'Fred', 'ponto': 0}, 
         {'texto': 'Aurora', 'ponto': 0}, 
         {'texto': 'Bufalo Bil', 'ponto': 1}, 
         {'texto': 'Thor', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é meu bairro de origem?',
        'respostas': [
        {'texto': 'Tanque', 'ponto': 0}, 
         {'texto': 'Taquara', 'ponto': 1}, 
         {'texto': 'Freguesia', 'ponto': 0}, 
         {'texto': 'Madureira', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual era minha banda favorita na adolescência?',
        'respostas': [
        {'texto': '5 seconds of summer', 'ponto': 0}, 
         {'texto': 'Red Hot Chilli Peppers', 'ponto': 0}, 
         {'texto': 'One Direction', 'ponto': 1}, 
         {'texto': 'Backstreet boys', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é a minha data de nascimento?',
        'respostas': [
        {'texto': '24/12/1998', 'ponto': 1}, 
         {'texto': '01/01/1999', 'ponto': 0}, 
         {'texto': '24/12/1999', 'ponto': 0}, 
         {'texto': '01/01/1998', 'ponto': 0},
          ],
      },
      {
        'texto': 'Qual é o nome do meu pai?',
        'respostas': [
        {'texto': 'Antônio', 'ponto': 0}, 
         {'texto': 'Luiz', 'ponto': 1}, 
         {'texto': 'José', 'ponto': 0}, 
         {'texto': 'Maurício', 'ponto': 0},
          ],
      },
      {
        'texto': 'Quantos irmãos(as) eu tenho?',
        'respostas': [
        {'texto': 'Um', 'ponto': 0}, 
         {'texto': 'Dois', 'ponto': 1}, 
         {'texto': 'Três', 'ponto': 0}, 
         {'texto': 'Quatro', 'ponto': 0},
          ],
      },
      
    ];

  void _responder(int ponto) {
    if (temPerguntaSelecionada) {
setState(() {
      _perguntaSelecionada++;
      _pontoTotal += ponto;
    });
  }
 }
    
    void _reiniciarQuestionario() {
      setState(() {
        _perguntaSelecionada = 0;
        _pontoTotal = 0;
      });
    }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF6A1B9A),
          centerTitle: true,
          title: Text(
            'Quiz da Vava',
            ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontoTotal, _reiniciarQuestionario),
        
      ));
  }

 



}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
