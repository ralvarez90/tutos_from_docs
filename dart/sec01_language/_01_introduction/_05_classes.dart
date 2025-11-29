import 'utils.dart';

/// CLASES
///
/// Son la base de la orientación a objetos de Dart. Son plantillas que
/// permiten generar objetos. Pueden tener propiedades, métodos, además
/// de constructores.
///
/// Dart permite implementar todos los concentps de la orientación a
/// objetos.
void main() {
  // create instance
  final newSpace = SpaceCraft("Apolo", DateTime.now());
  newSpace.describe();

  // end application
  systemPause();
}

/// Clase que ejemplifica el uso de clases, propiedade y métodos.
class SpaceCraft {
  // properties
  String name;
  DateTime? launchDay;

  // constructor
  SpaceCraft(this.name, this.launchDay) {
    // Initialization goes here
    // ...
  }

  // Named constructor, use contructir defined before
  SpaceCraft.unlaunched(String name) : this(name, null);

  /// Show instance description
  void describe() {
    print('Spacecraft: $name');
  }
}
