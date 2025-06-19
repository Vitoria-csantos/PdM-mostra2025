import 'package:flutter/material.dart';
import 'package:appjogos/navbar.dart';
import 'package:appjogos/pages/jogos.dart';
import 'package:appjogos/pages/pagalfred.dart'; // Página de detalhes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nossos Jogos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 87, 98, 95),
        ),
      ),
      home: const MyHomePage(title: 'Nossos Jogos'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Jogos> jogos = [
      Jogos(
        nome: 'Alfred Is a Bad Guy',
        foto: 'assets/alfred.jpg',
        autor: 'Yobiké',
        anoLancamento: '2024',
      ),
      // Você pode adicionar mais jogos aqui
    ];

    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: jogos.length,
        itemBuilder: (context, index) {
          final jogo = jogos[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesJogo(jogo: jogo),
                ),
              );
            },
            child: Card(
              color: const Color.fromARGB(255, 0, 126, 229),
              margin: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        jogo.foto,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jogo.nome,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text('Autor: ${jogo.autor}'),
                          Text('Ano de lançamento: ${jogo.anoLancamento}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}