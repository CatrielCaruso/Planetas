import 'package:flutter/material.dart';

class Planeta {
  int posicion;
  String nombre;
  String descripcion;
  String imagen;
  List<String> imagenes;
  Color color;

  Planeta(
      {this.descripcion,
      this.imagen,
      this.nombre,
      this.posicion,
      this.imagenes,
      this.color});
}

List<Planeta> planetas = [
  Planeta(
      posicion: 1,
      nombre: 'Mercurio',
      descripcion:
          'Mercurio es el planeta más cercano al Sol, y es el más pequeño de los 8 que rodean al sol. Su composición es de 70% elementos metálicos y el 30% por silicatos, y es un planeta que recibe una gran cantidad de impactos de meteoritos. Recibe seis veces más radiación solar de la que recibe nuestro planeta.',
      imagen: "assets/mercurio.jpg",
      color: Colors.amberAccent,
      imagenes: [
        "assets/mercurio1.jpg",
        "assets/mercurio2.jpg",
        "assets/mercurio3.jpg"
      ]),
  Planeta(
      posicion: 2,
      nombre: 'Venus',
      descripcion:
          'Venus es el segundo planeta más cercano al Sol, y por su tamaño y composición es parecido a la Tierra. El hecho es que su superficie es también rocosa, y debido a su cercanía con nuestro planeta, en ocasiones es posible verlo por las noches como una estrella muy brillante.',
      imagen: "assets/venus.jpg",
      color: Colors.green,
      imagenes: ["assets/venus1.jpg", "assets/venus2.jpg", "assetsvenus3.jpg"]),
  Planeta(
      posicion: 3,
      nombre: 'Tierra',
      descripcion:
          'La Tierra es el único planeta que tiene agua en forma líquida, otorgándole un intenso color azul; también se encuentra en las nubes de la atmósfera, aunque en forma de cristales de hielo. Otra característica importante es su atmósfera que, a diferencia de Venus o Marte, tiene muy poco dióxido de carbono.',
      imagen: "assets/tierra.jpg",
      color: Colors.amber,
      imagenes: [
        "assets/tierra1.jpg",
        "assets/tierra2.jpg",
        "assets/tierra3.jpg",
        "assets/tierra4.jpg"
      ]),
  Planeta(
      posicion: 4,
      nombre: 'Marte',
      descripcion:
          'Se cree que en el pasado Marte era muy parecido a la Tierra y que en su superficie habrían existido corrientes de agua; sin embargo, hoy en día no se ha descubierto nada líquido, sólo algo de hielo.',
      imagen: "assets/marte.jpg",
      color: Colors.red,
      imagenes: [
        "assets/marte1.jpg",
        "assets/marte2.jpg",
        "assets//marte3.jpg",
      ]),
  Planeta(
      posicion: 5,
      nombre: 'Jupiter',
      descripcion:
          'Este es el planeta más grande del Sistema Solar. Su tamaño es aproximadamente diez veces el tamaño de nuestro planeta y cuenta con un anillo. Posee una fuerza gravitatoria tan grande, que es capaz de afectar el movimiento del resto e incluso alejar cometas de sus órbitas.',
      imagen: "assets/jupiter.jpg",
      color: Colors.orange,
      imagenes: [
        "assets/jupiter1.jpg",
        "assets/jupiter2.jpg",
        "assets/jupiter3.jpg",
      ]),
  Planeta(
      posicion: 6,
      nombre: 'Saturno',
      descripcion:
          'Saturno es el planeta que posee más satélites, con un total de 23, siendo el más grande Titán. Su atmósfera está formada por nitrógeno y metano, lo que normalmente hace que no veamos su superficie.Sus anillos pueden observarse simplemente con un telescopio y están compuestos de millones de partículas de polvo y recubiertas de hielo.',
      imagen: "assets/saturno1.jpg",
      color: Colors.yellowAccent,
      imagenes: [
        "assets/saturno.jpg",
        "assets/saturno2.jpg",
        "assets/saturno3.jpg",
        "assets/saturno4.jpg",
      ]),
  Planeta(
      posicion: 7,
      nombre: 'Urano',
      descripcion:
          'Neptuno fue descubierto en 1846. Es uno de los planetas más grandes y se caracteriza por su intenso color azul. Este planeta fue descubierto a través de un telescopio en el año 1846 y ha sido el último visitado por una sonda interplanetaria. Posee cuatro anillos muy estrechos y ocho satélites, aunque se mencionan normalmente los dos más grandes: Nereida y Tritón. La atmósfera de Neptuno posee metano e hidrógeno y otros gases que aún no están identificados. Además, estaría rodeado por una capa de nubes, parecidas a la de Júpiter, Saturno y Urano.',
      imagen: "assets/urano4.jpg",
      color: Colors.greenAccent,
      imagenes: [
        "assets/urano3.jpg",
        "assets/urano2.jpg",
        "assets/urano.jpg",
        "assets/urano1.jpg",
      ]),
  Planeta(
      posicion: 8,
      nombre: 'Neptuno',
      descripcion:
          'Neptuno fue descubierto en 1846. Es uno de los planetas más grandes y se caracteriza por su intenso color azul.Este planeta fue descubierto a través de un telescopio en el año 1846 y ha sido el último visitado por una sonda interplanetaria. Posee cuatro anillos muy estrechos y ocho satélites, aunque se mencionan normalmente los dos más grandes: Nereida y Tritón. La atmósfera de Neptuno posee metano e hidrógeno y otros gases que aún no están identificados. Además, estaría rodeado por una capa de nubes, parecidas a la de Júpiter, Saturno y Urano.',
      imagen: "assets/neptuno.jpg",
      color: Colors.blueAccent,
      imagenes: [
        "assets/neptuno1.jpg",
        "assets/neptuno2.jpg",
        "assets/neptuno3.jpg",
      ]),
];
