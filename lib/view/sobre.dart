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