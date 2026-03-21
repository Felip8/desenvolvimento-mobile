import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: const Text("Pedra, Papel, Tesoura", style: TextStyle(
              fontWeight: .bold,
          color: Colors.white)),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(

            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 20)
              ),
              Image.asset("assets/images/circulo.png", height: 120,),
              const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 80),
                      child: Text("Escolha do APP", style: TextStyle(
                          fontWeight: .bold,
                      fontSize: 20),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Image.asset("assets/images/pedra.png", height: 90,),
                  Image.asset("assets/images/papel.png", height: 90,),
                  Image.asset("assets/images/tesoura.png", height: 90,),
                ],
              )
            ],
          ),
        ),
      );

  }
}
