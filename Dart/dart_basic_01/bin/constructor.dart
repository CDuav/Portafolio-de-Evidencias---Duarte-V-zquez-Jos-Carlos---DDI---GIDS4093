import 'package:dart_basic_01/point.dart';

void main() {
  // Constructor por defecto
  var p1 = Point();
  print('Constructor por defecto - x: ${p1.x}, y: ${p1.y}');

  // Constructor personalizado
  var p2 = Point.withCoordinates(10, 20);
  print('Constructor personalizado - x: ${p2.x}, y: ${p2.y}');

  // Constructor con nombre
  var p3 = Point.origin();
  print('Constructor con nombre - x: ${p3.x}, y: ${p3.y}');
}