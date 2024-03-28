// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaEsquecerSenhaView extends StatefulWidget {
  const TelaEsquecerSenhaView({super.key});

  @override
  State<TelaEsquecerSenhaView> createState() => _TelaEsquecerSenhaViewState();
}

class _TelaEsquecerSenhaViewState extends State<TelaEsquecerSenhaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                //
                // Navegação
                //

                var nome = 'João da Silva';

                Navigator.pushNamed(
                  context,
                  'cadastro',
                  arguments: nome,
                );
              },
              child: Text('abrir'),
            ),
          ],
        ),
      ),
    );
  }
}