import 'package:dart_basic_01/coche.dart';

void main(){
  var miCoche = Coche("Chevrolet", "Chevy Pickup", 1999);
  miCoche.mostrarDetalles();

  var otroCoche = Coche("Ford", "Falcon", 1968);
  otroCoche.mostrarDetalles();

  var cocheNuevo = Coche("Toyota", "Corolla", 2020);
  cocheNuevo.mostrarDetalles();

  var unCocheMas = Coche.soloMarca("Nissan");
  unCocheMas.mostrarDetalles();


  
}