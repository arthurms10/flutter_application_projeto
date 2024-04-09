// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaSobreView extends StatefulWidget {
  const TelaSobreView({super.key});

  @override
  State<TelaSobreView> createState() => _TelaSobreViewState();
}

class _TelaSobreViewState extends State<TelaSobreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Sobre',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'lib/imagens/app.png',
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(
              'Bem-vindo ao nosso aplicativo de lista de compras!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Objetivos do projeto:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '- Facilitar a organização das compras do dia a dia;',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '- Permitir a criação de listas personalizadas;',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '- Oferecer uma interface intuitiva e fácil de usar;',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text('Sobre o desenvolvedor:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(
              'Arthur Santos é estudante do curso de Análise e Desenvolvimento'
              'de Sistemas da FATEC de Ribeirão Preto',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
