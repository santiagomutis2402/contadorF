import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({Key? key}) : super(key: key);
  //variable, propiedad

  @override
  Widget build(BuildContext context) {

   const fontsize30=  TextStyle(fontSize: 30);
   int counter=10;

  return Scaffold(
    appBar: AppBar(
      title: const Text("HomeScreen") ,
      elevation: 0,//sobra
    ),
    body: Center(
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,//centra con el widget mas largo a lo vertical y cross horizontal
                children:   <Widget>[
                const Text('Numero de Clicks',style: fontsize30 ),
                Text('$counter',style: fontsize30),      
              ],
          ),
    ),
    //floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
    floatingActionButton:  FloatingActionButton(
      child: const Icon(Icons.plus_one),//widget especializado para mostrar iconos el icon
      onPressed: () { 
         print("Hola mundo: $counter");
         counter++;
       },) ,
  );
  }

}