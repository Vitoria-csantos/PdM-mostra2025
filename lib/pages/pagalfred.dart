import 'package:flutter/material.dart';
import 'package:appjogos/pages/jogos.dart';

class DetalhesJogo extends StatelessWidget {
  final Jogos jogo;

  const DetalhesJogo({super.key, required this.jogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jogo.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              jogo.foto,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              jogo.nome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.pink[200], // Caixa rosa
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sinopse: jogo de tabuleiro de quatro a oito pessoas onde os jogadores, em um time, precisam derrotar o boss do tabuleiro em uma batalha de dados.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Ano de lançamento: ${jogo.anoLancamento}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
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
