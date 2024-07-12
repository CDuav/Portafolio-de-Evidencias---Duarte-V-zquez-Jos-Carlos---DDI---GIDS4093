class Circle {
  double _radius = 0;

  Circle(double radius) {
    this.radius = radius;
  }

  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    }
  }

  double get radius => _radius;

  double get area => radius * radius * 3.14;
}