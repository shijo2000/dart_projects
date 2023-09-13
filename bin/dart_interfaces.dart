// Define an abstract class (implicit interface)
abstract class Shape {
  double area();
}

// Implement the implicit interface in a class
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(3, 4);

  print('Area of the circle: ${circle.area()}'); // Output: Area of the circle: 78.5
  print('Area of the rectangle: ${rectangle.area()}'); // Output: Area of the rectangle: 12.0
}
