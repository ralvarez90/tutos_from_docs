import 'utils.dart';

/**
 * FUNCIONES
 * 
 * Son bloques de código reutilizables y además ciudadanos de primera
 * clase.
 * 
 * Las funciones pueden recibirse como parámetros y/o almacenarse
 * en nombres de variables.
 */
void main() {
  // invocamos método
  print("Fibonacci numbers");
  for (var i = 1; i < 10; i++) {
    print("fibonacci($i) -> ${_fibonacci(i)}");
  }

  // end application
  systemPause();
}

/**
 * Retorna el número de fibonacci de acuerdo a 
 */
int _fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return _fibonacci(n - 1) + _fibonacci(n - 2);
}
