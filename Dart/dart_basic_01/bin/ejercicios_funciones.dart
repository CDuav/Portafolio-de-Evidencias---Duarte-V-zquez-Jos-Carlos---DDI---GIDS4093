import 'package:dart_basic_01/dart_functions.dart';

void main(){
  for(var i=0; i<=10; i++){
    saludar();
  }

  var funcionSaludo = saludar;
  var i=0;
  while(i<10){
    funcionSaludo();
    i++;
  }

  ejecutarOperacion(10, 20, sumar);
  ejecutarOperacion(20, 10, restar);
  ejecutarOperacion(10, 20, multiplicar);
  ejecutarOperacion(20, 10, dividir);

  var duplicar = crearMultiplicador(2);
  var triplicar = crearMultiplicador(3);

  print(duplicar(5));
  print(triplicar(20));

  var suma = (int a, int b){
    return a + b;
  };

  print("la suma es ${suma(5,6)}");

  var notas = [10,8,9,5,7];

  notas.forEach((n){
    print(n);
  });
  print("Fecha");
  notas.forEach((n)=>print(n));

  var sumaNotas = 0;
  notas.forEach((n)=>sumaNotas+=n);
  var promedio = sumaNotas/notas.length;
  print('El promedio es $promedio');
}

void ejecutarOperacion(int x, int y, int Function(int,int) operacion){
  var resultado = operacion(x,y);

  print('El resultado es: $resultado');

}

int sumar(int x, int y){
  return x+y;
}

int restar(int x, int y){
  return x-y;
}

int multiplicar(int x, int y){
  return x*y;
}

int dividir(int x, int y){
  return x~/y;
}

Function crearMultiplicador(int factor){
  return (int numero)=> numero * factor;
}