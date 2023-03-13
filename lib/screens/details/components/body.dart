import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:test/models/Producto.dart';

//Clase para mostrar el cuerpo de la vista detalles de pelicula
class Body extends StatelessWidget { // Creamos la clase Body utilizando la clase StatelessWidget(herencia)
  final Producto? producto;   //variable de instancia proporcianado como argumento al ser llamada la clase
  
  const Body({Key? key, this.producto}) : super(key: key); // constructor
  @override 
  Widget build(BuildContext context) {// Definimos el metodo obligatorio Build
                                        // y le damos como argumento el "contexto" de la app
                                      // tipo de retorno Widget

    Size size = MediaQuery.of(context).size;  //inicializamos size con el tamaño actual de la pantalla
    return SingleChildScrollView(  //Widget para poder scrolear y observar todo el contenido
      child: Column(  // como child tenemos un objeto column
        children: <Widget>[ // dentro de la columna tenemos los distintos widgets utilizados para mostrar
        //los detalles de la pelicula
           SizedBox( //SizedBox utilizado para establecer el tamaño de los hijos donde se almacena la información
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container( // contenedor principal
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    // right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration( // Caja para la sinopsis de la pelicula
                    color: Colors.white,  //color blanco
                    borderRadius: BorderRadius.only( //redondeamos los bordes
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                      )
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kTextColor),
                                  children: [
                                    // ignore: prefer_const_constructors
                                    TextSpan(
                                      text: "Sinopsis\n\n",
                                    ),
                                    TextSpan(
                                      text: producto!.descripcion,  //obtenemos la sinopsis del objeto que almacena la pelicula
                                      style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)
                                    ),
                                    // Text(producto!.descripcion)
                                                    
                                ],
                              )),
                            ),
                            // Text(producto!.descripcion)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: 
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                          // ignore: prefer_const_constructors
                          Text(
                          "Película", 
                          style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            producto!.title, //mostramos el nombre de la pelicula
                            style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: kDefaultPaddin),
                            Row(
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      // ignore: prefer_const_constructors
                                      TextSpan(text: "Ratin\n"),
                                      TextSpan(
                                        text: producto!.ratin, // mostramos la calificación de la pelicula
                                        style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                                        )
                                    ],
                                    ),
                                  ),
                                  SizedBox(width: kDefaultPaddin),
                                  Expanded(child: Image.asset(producto!.image, height: 430,))  // mostramos la imagen de la pelicula
                              ],
                            )
                      ],
                    ),
                  )
              ],
            ),
            )
        ]),
    );
  }
}