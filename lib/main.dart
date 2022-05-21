import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    title: "Frases do dia",
    home: HomeStatful(),
    debugShowCheckedModeBanner: false,
  ));
}


class HomeStatful extends StatefulWidget {
  const HomeStatful({Key? key}) : super(key: key);

  @override
  State<HomeStatful> createState() => _HomeStatfulState();
}

class _HomeStatfulState extends State<HomeStatful> {

  var _frases = [
    "Nossas dúvidas são traidoras e nos fazem perder o que, com frequência, poderíamos ganhar, por simples medo de arriscar.",
    "Até cortar os próprios defeitos pode ser perigoso. Nunca se sabe qual é o defeito que sustenta nosso edifício inteiro.",
    "A persistência é o caminho do êxito.",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.",
    "Creia em si, mas não duvide sempre dos outros.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma Frase";

  void _gerarFrase(){

    var sorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[sorteado];
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
                _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                  "Nova frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ),
              color: Colors.green,
              onPressed: _gerarFrase
            )
          ],
        ),
      ),
    );
  }
}

/*void main(){
  runApp(MaterialApp(
    title: "Frases do dia",
    home: HomeStateful()
    ));
}*/