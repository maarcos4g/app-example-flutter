import 'dart:ui';

import 'package:firstapp/widgets/button_widget.dart';

import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Kotel'),
        ),
        body: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/muro.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Kotel',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text('Jerusalém, Israel',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.blue),
                      Text('3.456'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  ButtonWidget(
                    onPress: (() {
                      print('Ligar');
                    }),
                    icon: Icons.call,
                    label: "Ligar",
                  ),
                  ButtonWidget(
                    onPress: (() {
                      print('Mapa');
                    }),
                    icon: Icons.location_on,
                    label: "Mapa",
                  ),
                  ButtonWidget(
                    onPress: (() {
                      print('Compartilhar');
                    }),
                    icon: Icons.share,
                    label: "Compartilhar",
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  style: TextStyle(fontSize: 16),
                  'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'),
            ),
          ],
        ),
      ),
    );
  }
}
