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
              Image.asset("assets/images/pedra.png", height: 120,),
              const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 30),
                      child: Text("Escolha do APP", style: TextStyle(
                          fontWeight: .bold,
                      fontSize: 25),)
              ),

              Image.asset("assets/images/papel.png", height: 120,),
              const Padding(
                  padding: EdgeInsets.only(top: 10),
              child: Text("Sua escolha", style: TextStyle(
                fontWeight: .bold,
                fontSize: 25
              ),),),

              Image.asset("assets/images/sentado.png",
                height: 120,
                fit: BoxFit.cover,),
              const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                child: Text("Você Perdeu/Venceu", style: TextStyle(
                  fontWeight: .bold,
                  fontSize: 20
                ),),
              ),

                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),


                  child: const Text("Jogar novamente", style: TextStyle(
                    color: Colors.white,
                fontWeight: .bold,
                fontSize: 20)),
                )
            ],
          ),
        ),
      );

  }
}
