
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/cadastrar_lista.dart';
import 'package:flutter_application_1/view/cadastro.dart';
import 'package:flutter_application_1/view/esquecer_senha.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/login.dart';
import 'package:flutter_application_1/view/sobre.dart';
import 'package:device_preview/device_preview.dart';

import 'view/cadastrar_itens.dart';
import 'view/itens.dart';
import 'view/listas.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      //Rotas de navegação
      //
      initialRoute: 'login',
      routes: {
        'login':(context) => TelaLoginView(),
        'sobre':(context) => TelaSobreView(),
        'home':(context) => TelaHomeView(),
        'esquecer_senha':(context) => TelaEsquecerSenhaView(),
        'cadastro':(context) => TelaCadastroView(),
        'cadastrar_lista':(context) => TelaCadastrarListaView(),
        'cadastrar_itens':(context) => TelaCadastrarItensView(),
        'listas':(context) => TelaListasView(),
        'itens':(context) => TelaItensView(),
      },
    );
  }
}
