import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jokenpoh/tela_final.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _play(int choice) {
    //PEDRA (0) / PAPEL (1) / TESOURA (2)
    int appChoice = Random().nextInt(3);
    String result;
    if (choice == appChoice) {
      result = 'Empate!';
    } else if ((choice == 0 && appChoice == 2) ||
        (choice == 1 && appChoice == 0) ||
        (choice == 2 && appChoice == 1)) {
      result = 'Você venceu!';
    } else {
      result = 'Você perdeu!';
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          userChoice: choice,
          result: result,
          appChoice: appChoice,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedra, Papel, Tesoura',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 60, 60, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/circulo.png', height: 120),
            const SizedBox(height: 20),
            const Text(
              'Escolha do APP',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _play(0),
                    child: Image.asset("assets/images/pedra.png", height: 80),
                  ),
                  GestureDetector(
                    onTap: () => _play(1),
                    child: Image.asset("assets/images/papel.png", height: 80),
                  ),
                  GestureDetector(
                    onTap: () => _play(2),
                    child: Image.asset("assets/images/tesoura.png", height: 80),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}