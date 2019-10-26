import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _mensaje;

  void _sendEvent() {
    /*analytics.sendInformationButton().then((mensaje) {
      setState(() {
        _mensaje = mensaje;
      });
    });*/
  }

  @override
  void initState() {
    super.initState();
    _mensaje = "Ninguna acción";
    //analytics.sendOpen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Evento que acaba de suceder',
            ),
            Text(
              '$_mensaje',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _sendEvent();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
