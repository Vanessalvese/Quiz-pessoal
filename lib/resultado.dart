
import 'package:flutter/material.dart';

class  Resultado extends StatelessWidget {

  final int ponto;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.ponto, this.quandoReiniciarQuestionario);


String get fraseResultado {
  if(ponto < 1) {
    return 'você me conhece mesmo?';
  } else if(ponto < 2) {
    return 'Poderia ter ido melhor, mas pelo menos tirou o tédio da quarentena, beijos';
  } else if(ponto < 3) {
    return 'Pelo menos você teve o trabalho de vir até aqui, ainda te amo';
  } else if(ponto < 4)  {
    return 'Pelo menos você teve o trabalho de vir até aqui, ainda te amo';
  } else if(ponto < 5) {
    return 'Pelo menos você teve o trabalho de vir até aqui, ainda te amo';
  } else if(ponto < 6) {
    return 'Você foi beemmm, caso queira aprender mais sobre mim, compre a postila no site vava.com.br, te espero lá!';
  } else if (ponto < 7) {
    return 'Você foi beemmm, caso queira aprender mais sobre mim, compre a postila no site vava.com.br, te espero lá!';
  }
  else if (ponto < 8) {
    return 'Você foi beemmm, caso queira aprender mais sobre mim, compre a postila no site vava.com.br, te espero lá!';
  }
  else if (ponto < 9) {
    return 'Você foi MUITO bem, parabéns, mas ainda não pode escrever minha bibliografia, beijos';
  }
  else if (ponto < 10) {
    return 'Você foi MUITO bem, parabéns, mas ainda não pode escrever minha bibliografia, beijos';
  }
  else {
    return 'Você é um stalker? Sacangemm, parabéns vc é um amigo de verdade, seu prêmio é: um lambeijo do bufalo Bil';
  }
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
Padding(
  padding: const EdgeInsets.all(12.0),
  child:   Center(child: Text(
  
            fraseResultado,
  
            style: TextStyle(fontSize: 28),
  
            ),
  
            ),
),
          RaisedButton (
          color: Color(0XFF6A1B9A),
            child: Text(
              'Reiniciar',
              style: TextStyle(fontSize: 18),
              ),
            textColor: Colors.white,
            onPressed: quandoReiniciarQuestionario,
            )
          ],
    );
  }
}