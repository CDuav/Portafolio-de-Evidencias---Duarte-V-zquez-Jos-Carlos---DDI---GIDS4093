//Definir un mixin
mixin Volador {
  void volar() {
    print("Estoy volando");
  }
}

mixin Corredor {
  void correr() {
    print("Estoy corriendo");
  }
}

class Pajaro with Volador, Corredor {

}

void main() {
  var pajaro = Pajaro();

  pajaro.volar();
  pajaro.correr();

}