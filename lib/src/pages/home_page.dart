import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medidor de aburrimiento"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Nivel de aburrimiento:"),
      ),
    );
  }

}