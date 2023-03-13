import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/models/Producto.dart';
import 'package:test/screens/details/components/body.dart';


// Al dar tap en alguna tarjeta se activa esta clase que nos muestra los detalles
class DetailsScreen extends StatelessWidget { // Creamos la clase DetailsScreen utilizando la clase StatelessWidget(herencia)
  final Producto? producto;   //variable de instancia que almacena el producto al que han dado tap
  const DetailsScreen({Key? key, this.producto}) : super(key: key);  // constructor
  @override
  Widget build(BuildContext context) {// Definimos el metodo obligatorio Build
                                        // y le damos como argumento el "contexto" de la app
                                      // tipo de retorno Widget

    return Scaffold(   // devolvemos un objetoScaffold que define la estructura base
                              // (barra de navegacion, y cuerpo)
                    
      backgroundColor: producto?.color,  // Color de fondo para toda la vista, almacenada dentro del producto(mejor visualizacion)
      appBar: AppBar(   //Creamos la barra de navegación que nos permitirá regresar al Home
        backgroundColor: producto?.color, // El color de acorde al almacenado en el producto para organización visual
        elevation: 0,  // Sin elevacion es decir sin sombra
        leading: IconButton(    //boton principal del appBar(va a la izquierda) Utilizamos un objeto IconButton
                                // Para mostrar una imagen en formato svg
          icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white,), //SvgPicture nos permite cargar el archivo svg
          onPressed: () => Navigator.pop(context), // Accion al presionar la flecha(svg), nos retorna al home
          ),
      ),
      body: Body(producto: producto), //Cuerpo principal de la vista de detalles
      // se encuenta en lib/screens/details/componentes/body.dart
    );
  }
}