import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {  // Creamos la clase HomeScreen utilizando la clase StatelessWidget(herencia)

  @override
  Widget build(BuildContext context) {  // Definimos el metodo obligatorio Build
                                        // y le damos como argumento el "contexto" de la app
                                      // tipo de retorno Widget

    return Scaffold(          // devolvemos un objetoScaffold que define la estructura base
                              // (barra de navegacion, y cuerpo)
      appBar: buildAppBar(),    // Para la appBar creamos el metodo buildAppBar
      body: Body(), // en lib/home/components/body.dart para el cuerpo principal de la app
    );
  }

  AppBar buildAppBar() {  // Metodo para crear la appBar(valor de retorno AppBar)
    return AppBar(    // Retornamos un objeto AppBar(proporcionado por flutter)
      backgroundColor: Color.fromARGB(255, 107, 132, 201), //Color para el fondo del appBar
      elevation: 0,  // Appbar sin elevacion(sin sombra)
      // widget principal mostrado al lado izquierdo
      leading: IconButton(   // Utilizamos un objeto IconButton que contiene un icono en formato SVG
        icon: SvgPicture.asset('assets/icons/back.svg'),  
        onPressed: () {},   // La acción del boton, sin establecer al no haber otra pantalla hacia atras
      ),
 
      );
  }
}