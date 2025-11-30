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
  // create instances
  final voyager = _SpaceCraft("Apolo", DateTime.now());
  voyager.describe();

  final voyager3 = _SpaceCraft.unlaunched('Voyager III');
  voyager3.describe();

  // end application
  systemPause();
}

/// Clase que ejemplifica el uso de clases, propiedade y métodos. Si
/// inicia el nombre con un guión bajo, esta solo estará disponible
/// dentro del script que la define.
class _SpaceCraft {
  // properties
  String name;
  DateTime? launchDate;

  // getter
  int? get launchYear => launchDate?.year;

  // constructor
  _SpaceCraft(this.name, this.launchDate) {
    // Initialization goes here
    // ...
  }

  // Named constructor, use contructir defined before
  _SpaceCraft.unlaunched(String name) : this(name, null);

  /// Show instance description
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlauched');
    }
  }
}
