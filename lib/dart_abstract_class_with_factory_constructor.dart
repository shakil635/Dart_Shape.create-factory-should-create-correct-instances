/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_abstract_class_with_factory_constructor_base.dart';

abstract class Shape {
  Shape();
  String draw();
  factory Shape.create(String items) {
    if (items == "circle") {
      return Circle();
    } else {
      return Square();
    }
  }
  /*
     return items == "circle"
        ? Circle()
        : items == "squre"
            ? Square()
            : Square();
   */
}

class Circle extends Shape {
  @override
  String draw() {
    return 'Drawing Circle';
  }
}

class Square extends Shape {
  @override
  String draw() {
    return 'Drawing Square';
  }
}

/*
Practice Question 4: Abstract Class with Factory Constructor
Question:
Create an abstract class Shape with a factory constructor Shape.
create that decides which concrete subclass to instantiate 
based on a string parameter.
Implement two subclasses, Circle and Square, 
each with a method draw.
The factory constructor in Shape should instantiate 
Circle when the parameter is ‘circle’ and Square when it’s ‘square’.
 */
