import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:test/models/Producto.dart';
import 'package:test/screens/details/detail_screen.dart';

// Cuerpo de la vista principal de la aplicacion
class Body extends StatelessWidget {  // Creamos la clase Body utilizando la clase StatelessWidget(herencia)

  Widget build(BuildContext context) {// Definimos el metodo obligatorio Build
                                        // y le damos como argumento el "contexto" de la app
                                      // tipo de retorno Widget

    return Column(    // devolvemos un objeto Column que va a contener las peliculas
      crossAxisAlignment: CrossAxisAlignment.start,  // alineamos al lado izquierdo de la columna
      children: <Widget>[   // lista de widgets dentro de la columna
        Text('Sinopsis de Peliculas', // Utilizamos el objeto text para el titulo
        style: Theme.of(context)
          .textTheme
          .headline5  // fuente predeterminada para encabezados nivel 5
          ?.copyWith(fontWeight: FontWeight.bold),    //Fuente sombreada
        ),

        Expanded( // objeto para ocupar todo el espacio en la columna 
          child: Padding(   // Espacio de relleno 
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder( // cuadricula o grilla para las tarjetas de las peliculas
              itemCount: productos.length,  // numero de items en la cuadricula de acuerdo a la longitud del arreglo de peliculas
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  // para organizar la cuadricula
                crossAxisCount: 2,    // 2 tarjetas por fila
                //Espacio entre tarjetas y filas
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,  //tamaño ajustado para cada tarjeta
                ), 
              itemBuilder: (context, index) => ItemCard(  // ItemCard nos mostrara la información de cada pelicula
                producto: productos[index],     // Parametro para añadir la pelicula a mostrar con sus distintas propiedades
                press: () => Navigator.push(    // parametro para añadir la accion al presionar cada tarjeta de pelicula
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(  // Al presionar nos llevará a DetailsScreen y a este mismo se le pasa el producto clickeado
                      producto: productos[index],
                      )
                      )),
              )),
          ),)
      ],
    );
  }
}

class ItemCard extends StatelessWidget {  // Creamos la clase ItemCard utilizando la clase StatelessWidget(herencia)
  final Producto? producto;   //variable de instancia
  final Function? press;      //Variable de instancia para definir la accion a realizar al presionar
  void presse(){    
    press!();
  }
  const ItemCard({  // Constructor
    Key? key,
    this.producto,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {// Definimos el metodo obligatorio Build
                                        // y le damos como argumento el "contexto" de la app
                                      // tipo de retorno Widget
    return GestureDetector(  //retornamos el widget GestureDetector para detectar que el usuario presiono la tarjeta
      onTap: presse,  // Definimos la accion a realizar (dada como parametro)
      child: Column( // Aqui tenemos el contenido de la tarjeta
        crossAxisAlignment: CrossAxisAlignment.start, // alineamos a la izquierda del contenedor
        children: <Widget>[
          Container(  //Aqui se encuentra contenido la imagen, titulo y la calificación de la pelicula
            padding: const EdgeInsets.all(kDefaultPaddin),
            height: 270,
            width: 180,
            decoration: BoxDecoration(
              color: producto?.color, //Color del card
              borderRadius: BorderRadius.circular(16),  //borde redondeado 
              ),
              child: Image.asset(producto!.image,),  
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(producto!.title,  //Titulo
            style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            producto!.ratin, // Calificación de la pelicula
            style: TextStyle(fontWeight: FontWeight.bold), //fuente negrita
            )
        ],
      ),
    );
  }
}