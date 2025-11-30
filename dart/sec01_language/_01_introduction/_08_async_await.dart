/// ASINCRONISMO Y FUTUROS
///
/// Todas las operaciones asíncronas en dart regresan un
/// Future<T> donde el T es el tipo de dato al que se
/// resuelve.
///
/// Digamos que son equivalente o prácticamente lo mismo que
/// las promesas en javascript.
///
/// Empleamos las palabras reservadas asyn-await para poder
/// ejecutar funciones asíncronas y evitar el callback hell.
///
/// Se emplea el marcar una función como *async para indicar
/// retornará un Stream o flujo de datos asíncrono.
///
/// Un Stream es un tipo de dato
void main() {
  // invocamos función asíncrona
  printWithDelay('Hello World in Dart');
  printWithDelay2('This is second line...');
  print('This is next line code...');

  // end application
}

// constante global que representa la duración de 1 segundo
const _oneSecond = Duration(seconds: 1);

/// Función que se va ejecutar de manera asíncrona, es decir contiene un
/// await en su cuerpo por lo tanto regresa un futuro y debe marcarse
/// como función async.
Future<void> printWithDelay(String message) async {
  await Future.delayed(_oneSecond);
  print(message);
}

/// Función equivalente a la anterior solo que sin el uso de
/// async await.
Future<void> printWithDelay2(String message) {
  return Future.delayed(_oneSecond).then((value) {
    print(message);
  });
}
