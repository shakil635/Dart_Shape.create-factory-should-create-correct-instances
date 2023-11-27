import 'package:dart_abstract_class_with_factory_constructor/dart_abstract_class_with_factory_constructor.dart';
import 'package:test/test.dart';

void main() {
  test('Shape.create factory should create correct instances', () {
    var circle = Shape.create('circle');
    var square = Shape.create('square');
    expect(circle, isA<Circle>());
    expect(square, isA<Square>());
  });

  test('Circle and Square should implement draw method', () {
    var circle = Shape.create('circle');
    var square = Shape.create('square');
    expect(circle.draw(), equals('Drawing Circle'));
    expect(square.draw(), equals('Drawing Square'));
  });
}
