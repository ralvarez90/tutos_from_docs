/**
 * VARIABLES
 * 
 * Empleamos la palabra var para declarar y defininir variables y const
 * para definir constantes.
 * 
 * Absolutamente todo en dart es un objeto. Dart probe de segurdad de tipos
 * mediante un sistema de tipos estáticos con inferencia.
 * 
 * Dart nos provee de tipos de datos ya construidos listos para emplear, como
 * enteros, flotantes, arreglos, mapas, et.
 */
void main() {
  // define string variabke
  var helloMsg = "Hello World";

  // update variable content and show it
  helloMsg += helloMsg + ' in Dart!';
  print(helloMsg);

  // show data type
  print('helloMsg data type: ${helloMsg.runtimeType}');

  // create list constant
  const flyObject = ['Jupiter', 'Saturn'];
  print('flyObject: $flyObject, with type ${flyObject.runtimeType}');

  // create map
  const items = {'one': 1, 'two': 2};
  print('itemsz map: $items, with type: ${items.runtimeType}');
}
