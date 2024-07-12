class Point {
  int x = 0; // Inicializa x con 0
  int y = 0; // Inicializa y con 0

  // Constructor por defecto
  Point();

  // Constructor personalizado con coordenadas
  Point.withCoordinates(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // Constructor con nombre origin
  Point.origin() {
    this.x = 0;
    this.y = 0;
  }
}