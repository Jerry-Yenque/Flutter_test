import 'package:flutter/material.dart';

class Producto {
  final String image, title, descripcion, ratin;
  final int id;
  final Color color;

  Producto({
    required this.id,
    required this.image,
    required this.title,
    required this.descripcion,
    required this.color,
    required this.ratin,
  });

}

List<Producto> productos = [
  Producto(
    id: 1,
    title: 'John Wick 3',
    ratin: '9/10',
    descripcion: 'En "John Wick: Capítulo 3 - Parabellum", el legendario asesino a sueldo John Wick (interpretado por Keanu Reeves) se encuentra huyendo después de haber sido declarado "excomulgado" por la Mesa Suprema, la organización que controla el mundo de los asesinos a sueldo. Con una recompensa de 14 millones de dólares en su cabeza y sin amigos ni aliados, John Wick debe luchar por sobrevivir en un mundo donde cualquier persona podría ser su enemigo. Mientras tanto, John trata de descubrir cómo escapar de la situación en la que se encuentra.',
    image: 'assets/images/john_wick.jpg',
    color: Color(0xFF3D82AE),
  ),
   Producto(
    id: 2,
    title: 'The terminator',
    ratin: '8/10',
    descripcion: 'En "The Terminator" (El Exterminador), una máquina de inteligencia artificial, conocida como el "Terminator" (interpretado por Arnold Schwarzenegger), es enviada desde el futuro para asesinar a Sarah Connor (Linda Hamilton), la mujer que dará a luz al líder de la resistencia humana en una guerra contra las máquinas. El guerrero rebelde Kyle Reese (Michael Biehn) es enviado también desde el futuro para proteger a Sarah, y juntos tratan de sobrevivir y detener al Terminator antes de que cumpla su misión.',
    image: 'assets/images/terminator.jpg',
    color: Color(0xFF3D82AE),
  ),
     Producto(
    id: 3,
    title: 'The mask',
    ratin: '8.5/10',
    descripcion: '"The Mask" (La Máscara) es una comedia de superhéroes que cuenta la historia de Stanley Ipkiss (interpretado por Jim Carrey), un hombre tímido y desafortunado que descubre una máscara mágica que le da habilidades sobrehumanas y una personalidad extravagante. Usando sus nuevos poderes, Stanley se transforma en un héroe para combatir el crimen en la ciudad, pero también atrae la atención de la policía, un gángster peligroso y una mujer hermosa pero ambiciosa.',
    image: 'assets/images/the_mask.jpg',
    color: Color(0xFF3D82AE),
  ) ,
       Producto(
    id: 4 ,
    title: 'El camino',
    ratin: '8.5/10',
    descripcion: '"El Camino: A Breaking Bad Movie" es una película que sirve como epílogo de la exitosa serie de televisión "Breaking Bad". La historia sigue a Jesse Pinkman (interpretado por Aaron Paul) inmediatamente después de los eventos del final de la serie. Jesse escapa de su cautiverio y trata de encontrar una manera de empezar de nuevo. La película muestra su lucha por dejar atrás su pasado y construir un futuro mejor para sí mismo. La película, dirigida y escrita por Vince Gilligan, cuenta con una excelente actuación de Aaron Paul y ofrece un cierre satisfactorio para los fans de "Breaking Bad".',
    image: 'assets/images/el_camino.jpg',
    color: Color(0xFF3D82AE),
  ),
         Producto(
    id: 5,
    title: 'The Amazin SpiderMan',
    ratin: '7.5/10',
    descripcion: 'the amazin spiderman sinopsis breve pelicula "The Amazing Spider-Man" es una película de superhéroes que cuenta la historia de Peter Parker (interpretado por Andrew Garfield), un estudiante de secundaria que adquiere habilidades sobrehumanas después de ser mordido por una araña genéticamente modificada. Después de la muerte de su tío Ben, Peter se convierte en Spider-Man y promete utilizar sus habilidades para proteger a Nueva York de los peligrosos criminales que amenazan la ciudad.',
    image: 'assets/images/spider_man.jpg',
    color: Color(0xFF3D82AE),
  ),
         Producto(
    id: 6,
    title: 'The Plague Dogs',
    ratin: '10/10',
    descripcion: '"The Plague Dogs" es una película animada británica que sigue la historia de dos perros, Rowf y Snitter, que logran escapar de un laboratorio de investigación animal en el que han sido sometidos a experimentos. Mientras intentan sobrevivir en la naturaleza, los dos perros se enfrentan a una serie de desafíos, incluyendo la persecución por parte de las autoridades que intentan recapturarlos. La película, dirigida por Martin Rosen y basada en la novela del mismo nombre de Richard Adams, explora temas como la crueldad hacia los animales y la lucha por la supervivencia en un mundo peligroso.',
    image: 'assets/images/plague_of_dogs.jpg',
    color: Color(0xFF3D82AE),
  ) 
];

