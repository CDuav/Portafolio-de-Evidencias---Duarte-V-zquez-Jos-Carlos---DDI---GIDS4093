//Superclase
class Vehiculo{
  
  //Atributos de la superclase
  String marca;
  int anio;

  //Método constructor
  Vehiculo(this.marca,this.anio);

  //Imprime valores de los atributos
  void mostrarDetalles(){
    print("Marca: $marca, Año: $anio");
  }

}