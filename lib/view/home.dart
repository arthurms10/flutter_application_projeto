// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaHomeView extends StatefulWidget {
  const TelaHomeView({Key? key}) : super(key: key);

  @override
  State<TelaHomeView> createState() => _TelaHomeViewState();
}

class _TelaHomeViewState extends State<TelaHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Home',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/imagens/imghome.jpg',
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'cadastrar_lista',
                );
              },
              child: Text('Criar Nova Lista de Compras'),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'listas',
                );
              },
              child: Text('Acessar Listas de Compras'),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'login',
                );
              },
              child: Text('Sair da conta'),
            ),
          ],
        ),
      ),
    );
  }
}
