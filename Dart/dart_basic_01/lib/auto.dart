import 'vehiculo.dart';

//Subclase de vehículo
class Auto extends Vehiculo{
  
  //Atributos propios
  String modelo;
  
  //Crear constructor de auto
  Auto(String marca, int anio, this.modelo) : super(marca,anio);
  
}
