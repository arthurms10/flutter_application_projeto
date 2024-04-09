// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaEsquecerSenhaView extends StatefulWidget {
  const TelaEsquecerSenhaView({Key? key}) : super(key: key);

  @override
  State<TelaEsquecerSenhaView> createState() => _TelaEsquecerSenhaViewState();
}

class _TelaEsquecerSenhaViewState extends State<TelaEsquecerSenhaView> {
  final TextEditingController _emailController = TextEditingController();
  final RegExp _emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'); // Expressão regular para validar e-mail
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recuperar Senha',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/imagens/password.jpg',
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                errorText: _errorMessage,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _enviarPedidoRecuperacao();
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }

  void _enviarPedidoRecuperacao() {
    final String email = _emailController.text.trim();
    if (_emailRegex.hasMatch(email)) {
      setState(() {
        _errorMessage = null;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('E-mail enviado com sucesso'),
        ),
      );

      Navigator.pushNamed(
        context,
        'login',
      );
    } else {
      setState(() {
        _errorMessage = 'Formato de e-mail inválido';
      });
    }
  }
}
