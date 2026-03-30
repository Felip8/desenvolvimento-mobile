import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int userChoice;
  final String result;
  final int appChoice;

  const ResultPage({
    super.key,
    required this.userChoice,
    required this.result,
    required this.appChoice,
  });

  String getChoiceImage(int choice) {
    switch (choice) {
      case 0:
        return 'assets/images/pedra.png';
      case 1:
        return 'assets/images/papel.png';
      case 2:
        return 'assets/images/tesoura.png';
      default:
        return 'assets/images/circulo.png';
    }
  }

  String getResultImage(String result) {
    if (result == 'Você venceu!') {
      return 'assets/images/vitoria.png';
    } else if (result == 'Você perdeu!') {
      return 'assets/images/derrota.png';
    } else {
      return 'assets/images/empate.png';
    }
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
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    getChoiceImage(appChoice),
                    height: 100,
                  ),
                  const Text(
                    'Escolha do APP',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset(
                    getChoiceImage(userChoice),
                    height: 100,
                  ),
                  const Text(
                    'Sua Escolha',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset(
                    getResultImage(result),
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    result,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(270, 50),
                      backgroundColor: const Color.fromRGBO(255, 0, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Jogar Novamente',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}