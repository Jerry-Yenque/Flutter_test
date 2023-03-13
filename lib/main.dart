import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:test/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget{  // Creamos la clase MyApp utilizando la clase StatelessWidget(herencia)
  Widget build(BuildContext context){ // Definimos el metodo obligatorio Build 
                                      // y le damos como argumento el "contexto" de la app
                                      // tipo de retorno Widget

    return MaterialApp(               // Creamos y retornamos un MaterialApp object, representa 
                              // un widget que configura apariencia y comportamiento 
      debugShowCheckedModeBanner: false, // Para ejecutar sin mostrar que estamos en modo depuración
      title: 'Flutter Demo',
      theme: ThemeData(     //Propiedad para el tema(color y densidad visual)
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),  //Aplicamos el color al cuerpo almacenado en kTextColor constants.dart
        visualDensity: VisualDensity.adaptivePlatformDensity, //Densidad visual adaptativa
      ),
      home: HomeScreen(), // alojado en lib/screens/home/Home_screen.dart  para el cuerpo principal de la app
    );
  }
}