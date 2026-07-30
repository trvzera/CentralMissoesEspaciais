import 'package:flutter/material.dart';

import '../widgets/card_missao.dart';
import './tela_astronauta.dart';

class TelaMissao extends StatefulWidget {
  const TelaMissao({super.key});

  @override
  State<TelaMissao> createState() => _TelaMissaoState();
}

class _TelaMissaoState extends State<TelaMissao> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController planetaController = TextEditingController();

  int energia = 50;
  String mensagem = "Energia atual: 50";
  mudarEnergia(bool aumentar) {
    if (aumentar) {
      if (energia < 100) energia += 10;
    } else {
      if (energia > 0) energia -= 10;
    }
    setState(() {
      mensagem = "Energia atual: $energia";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outer Wilds Ventures 🚀'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: nomeController,
                  decoration: const InputDecoration(
                      labelText: "Digite seu nome",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: planetaController,
                  decoration: const InputDecoration(
                      labelText: "Planeta destino",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.rocket)),
                ),
                const SizedBox(height: 20),
                Text(mensagem),
                Text(energia.toString()),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () => mudarEnergia(true),
                        child: const Text("+")),
                    ElevatedButton(
                        onPressed: () => mudarEnergia(false),
                        child: const Text("-"))
                  ],
                ),
                const PainelInformacoes(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaAstronauta(
                                nome: nomeController.text,
                                planeta: planetaController.text,
                                energia: energia,
                              )),
                    );
                  },
                  child: const Text('Vizualizar Missão'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
