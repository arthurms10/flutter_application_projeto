// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaCadastroView extends StatefulWidget {
  const TelaCadastroView({super.key});

  @override
  State<TelaCadastroView> createState() => _TelaCadastroViewState();
}

class _TelaCadastroViewState extends State<TelaCadastroView> {
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