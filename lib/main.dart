import 'package:flutter/material.dart';
import 'package:bytebank/src/screens/Home.dart';


void main() {
  runApp(const ByteBankApp());
}
/*
  Criar um stateless como root é uma boa prática pra garantir que
o MaterialApp não vai ficar mudando de estado toda hora sem necessidade


CONTROLES UTEIS
ALT + INSERT - CRIA CONSTRUTOR
STLESS - CRIA STATELESS
STFUL - CRIA STATEFUL
ALT + ENTER NO WIDGET - OPÇÕES DE WRAP/ OPÇÕES PARA EDITAR ON PRESSED
CRTL + ALT + M - CRIA MÉTODO
CRTL + N - NAVEGAR ENTRE CLASSES
 */

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  // Esse widget é o root do app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bytebank app',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}
