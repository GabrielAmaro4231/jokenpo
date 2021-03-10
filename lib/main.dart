import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imagePaper = 'assets/images/paper.png';
  String imageRock = 'assets/images/rock.png';
  String imageScissors = 'assets/images/scissors.png';
  String imageComputer = 'assets/images/paper.png';
  String mensagem = '';
  int computerIndex = 0;

  numberGenerator() {
    var rng = new Random();
    for (var i = 0; i < 1; i++) {
      return (rng.nextInt(3));
    }
  }

  void opcaoPedra() {
    computerIndex = numberGenerator();

    if (computerIndex == 0) {
      imageComputer = 'assets/images/rock.png';
      mensagem = "Foi empate!";
    } else if (computerIndex == 1) {
      imageComputer = 'assets/images/paper.png';
      mensagem = "Você perdeu!";
    } else {
      imageComputer = 'assets/images/scissors.png';
      mensagem = "Você ganhou!";
    }

    setState(() {
      imageComputer = imageComputer;
      mensagem = mensagem;
    });
  }

  void opcaoPapel() {
    computerIndex = numberGenerator();

    if (computerIndex == 0) {
      imageComputer = 'assets/images/rock.png';
      mensagem = "Você ganhou!";
    } else if (computerIndex == 1) {
      imageComputer = 'assets/images/paper.png';
      mensagem = "Foi empate!";
    } else {
      imageComputer = 'assets/images/scissors.png';
      mensagem = "Você perdeu!";
    }

    setState(() {
      imageComputer = imageComputer;
      mensagem = mensagem;
    });
  }

  void opcaoTesoura() {
    computerIndex = numberGenerator();

    if (computerIndex == 0) {
      imageComputer = 'assets/images/rock.png';
      mensagem = "Você perdeu!";
    } else if (computerIndex == 1) {
      imageComputer = 'assets/images/paper.png';
      mensagem = "Você ganhou!";
    } else {
      imageComputer = 'assets/images/scissors.png';
      mensagem = "Foi empate!";
    }

    setState(() {
      imageComputer = imageComputer;
      mensagem = mensagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokenpo',
      theme: ThemeData(primaryColor: Colors.cyan),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("JokenPô"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 5,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
                        child: Text(
                          "O Computador escolheu  ...",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Image.asset(imageComputer),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "\n$mensagem",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // A ZONA COMEÇA

                      //PEDRA

                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Image.asset(imageRock),
                              ),
                              Flexible(
                                flex: 1,
                                child: RaisedButton(
                                  color: Colors.cyan,
                                  child: Text(
                                    "Pedra",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  onPressed: () => opcaoPedra(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //PAPEL

                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Image.asset(imagePaper),
                              ),
                              Flexible(
                                flex: 1,
                                child: RaisedButton(
                                  color: Colors.cyan,
                                  child: Text(
                                    "Papel",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  onPressed: () => opcaoPapel(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //TESOURA

                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Image.asset(imageScissors),
                              ),
                              Flexible(
                                flex: 1,
                                child: RaisedButton(
                                  color: Colors.cyan,
                                  child: Text(
                                    "Tesoura",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  onPressed: () => opcaoTesoura(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //TERMINA AQUI
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
