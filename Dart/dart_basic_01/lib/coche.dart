//Declaración de clase
class Coche{
  //Atributos de la clase
  String? marca;
  String? modelo;
  int? anio;

  Coche(this.marca,this.modelo,this.anio);

  Coche.soloMarca(this.marca){
    modelo = 'Desconocido';
    anio = 0;
  }

  void mostrarDetalles(){
    print("Marca: $marca, Modelo: $modelo, Año: $anio");
  }
}