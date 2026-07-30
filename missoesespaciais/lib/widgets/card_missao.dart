import 'package:flutter/material.dart';

class PainelInformacoes extends StatelessWidget {
  const PainelInformacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo.shade50,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Informações da missão',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.rocket),
              title: Text('Traje'),
              subtitle: Text(
                  'Traje equipado com propulsores a jato e oxigênio limitados!'),
            ),
          ],
        ),
      ),
    );
  }
}
