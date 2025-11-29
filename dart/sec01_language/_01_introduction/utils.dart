import 'dart:io';

/**
 * Imprime un mensaje en consola. Similar a println en python.
 */
void println([String content = '']) {
  print('$content');
}

/**
 * Imprime un mensaje en consola esperando entrada de usuario.
 */
void systemPause() {
  stdout.write('\nPress any key to continue . . . ');
  stdin.readLineSync();
}
