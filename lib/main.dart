import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cambia color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//Variable "_color"de tipo Color.
  Color _color = Colors.blue;

//Funcion que cambia el color de Container, esta funcion utiliza un operador ternario
// para cambiar la variable "_color" de azul a rojo o de rojo azul.

  void _changeColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
// Widget GestureDetector es el responsable que al tocar la pantalla y mediante la propiedad
// onTap manda  a llamar la funcion _changeColor
          child: GestureDetector(
        onTap: _changeColor,
        // Widget Container tiene como propiedad Color la variable _color.
        child: Container(
          color: _color,
          width: 300,
          height: 300,
        ),
      )),
    );
  }
}
