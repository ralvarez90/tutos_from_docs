import 'utils.dart';

/**
 * FLOW CONTROL
 * 
 * Básicamente contamos con los elementos de otros lenguajes de
 * programación como if, else if, else, switch, for, etc.
 */
void main(List<String> args) {
  // create int variable
  var someYear = 2001;

  // control flow statement
  if (someYear >= 2021) {
    print('21st century');
  } else if (someYear >= 1901) {
    print('20th century');
  }

  // new line
  println();

  // create const list and iterate with for-in
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  print('Iterating over const list...');
  for (final obj in flybyObjects) {
    print('- $obj');
  }

  // new line
  println();

  // using traditional for
  for (var i = 0; i < 1_000_000; i++) {
    print('i = $i');
  }

  // end application
  systemPause();
}
