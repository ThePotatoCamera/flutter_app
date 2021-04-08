import "package:flutter/material.dart";

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medidor de aburrimiento"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tu nivel de aburrimiento:", style: TextStyle( fontSize: 25 ),),
            Text("$_contador", style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold ), )
          ],
        ),
      ),
      floatingActionButton: _floatingButtons()
    );
  }

  Widget _floatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton( child: Icon(Icons.refresh), onPressed: _restart, ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _resta, ),
        SizedBox(width: 5,),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _adicion,  ),
      ],
    );
  }

  void _adicion() {
    setState(() {
      _contador ++;
    });
  }

  void _resta() {
    setState(() {
      _contador --;
    });
  }

  void _restart() {
    setState(() {
      _contador = 0;
    });
  }

}

