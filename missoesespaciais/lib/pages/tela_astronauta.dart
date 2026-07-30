import 'package:flutter/material.dart';

class TelaAstronauta extends StatelessWidget {
  final String nome;
  final String planeta;
  final int energia;

  const TelaAstronauta(
      {super.key,
      required this.nome,
      required this.planeta,
      required this.energia});
  verificarMissao() {
    if (energia >= 70) {
      return "Missão pronta para iniciar";
    } else if (energia >= 40 && energia < 70) {
      return "Missão precisa de preparação";
    } else {
      return "Energia insuficiente para a missão";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo(a) $nome! 👩‍🚀👨‍🚀'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Indo para o planeta: $planeta."),
                const SizedBox(height: 20),
                Text("Atualmente com $energia de energia."),
                const SizedBox(height: 20),
                Text(verificarMissao()),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Voltar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
