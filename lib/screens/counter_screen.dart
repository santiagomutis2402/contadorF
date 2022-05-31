import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  //variable, propiedad
  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);

    void increase() {
      counter++;
      setState(() {});
    }

    void Minus() {
      counter--;
      setState(() {});
    }

    void rei() {
      counter = 0;
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Repeticiones"),
        centerTitle: true,
        elevation: 10, //sombra
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //centra con el widget mas largo a lo vertical y cross horizontal
          children: <Widget>[
            const Text('Numero de Repeticiones', style: fontsize30),
            Text('$counter', style: fontsize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        minusFn: Minus,
        reiFn: rei,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function minusFn;
  final Function reiFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.minusFn,
    required this.reiFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
//añadir -1
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            //widget especializado para mostrar iconos el icon
            onPressed: () => minusFn()),

//reiniciar
        FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            //widget especializado para mostrar iconos el icon
            onPressed: () => reiFn()),

        //Añadir +1
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          //widget especializado para mostrar iconos el icon
          onPressed: () => increaseFn()
          //funcion
          ,
        ),
      ],
    );
  }
}
