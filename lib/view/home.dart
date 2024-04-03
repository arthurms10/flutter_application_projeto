// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaHomeView extends StatefulWidget {
  const TelaHomeView({super.key});

  @override
  State<TelaHomeView> createState() => _TelaHomeViewState();
}

class _TelaHomeViewState extends State<TelaHomeView> {
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
            
          ],
        ),
      ),
    );
  }
}