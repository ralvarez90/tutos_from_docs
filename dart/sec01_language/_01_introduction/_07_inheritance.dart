import 'utils.dart';

/// INHERITANCE
///
/// La herencia es uno de los pilares de la POO. Se emplea la
/// palabra reservada extends en Dart para indicar que una clase
/// extenderá de otra.
///
/// Existen los mixins o mezlas que permiten agregar funcionalidad
/// a otras clases sin necesidad de implementar herencia.
///
/// Para que una clase pueda agregar la funcionalidad de un mixin
/// se emplea la palabra reservada with posteriormente a la herencia,
/// es decir de forma general es:
///
/// class BaseClass extends SuperClass with MixinNameClass {
/// ...
/// }
///
/// Las clases abstractas son clases que almenos contiene un método
/// abstracto, es decir soin implementar. La sintaxis para definir
/// es la siguiente:
///
/// abstract class AbstractClassName {
/// ...
/// }
///
/// Notas:
/// - Los mixins son tipos especiales de clases.
/// - Todas las clases definen una interfaz de manera implícita. Es
/// decir, que cualquier clase se puede implementar mediante la palabra
/// reservada implements en dart.
void main() {
  // end application
  systemPause();
}

/// Reprecenta un cohete espacial.
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

/// Ejemplifica el uso de herancia.
class Orbiter extends _SpaceCraft {
  // property
  double altitude;

  // Constructor
  Orbiter(String super.name, super.launchDate, this.altitude);
}

/// Ejemplifica el uso de mixins para agregar funcionalidad.
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

/// Ejemplifica el uso de herencia y aplicación de mixins.
class PilotedCraft extends _SpaceCraft with Piloted {
  PilotedCraft(String super.name, DateTime super.launchDate);
}
