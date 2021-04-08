import 'package:flutter/material.dart';

import 'package:flutter_app/src/pages/contador_page.dart';
// import 'package:flutter_app/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de componentes',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Componentes'),
          ),
          body: ContadorPage()
      ),
    );
  }
}