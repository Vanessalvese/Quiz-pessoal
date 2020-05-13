import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Color(0XFF6A1B9A),
        child: Text(texto),
        onPressed: quandoSelecionado,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
        padding: const EdgeInsets.all(13.0),
      ),
    );
  }
}