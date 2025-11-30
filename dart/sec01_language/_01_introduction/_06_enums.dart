import 'utils.dart';

/**
 * ENUMERACIONES
 * 
 * Son conjuntos de valores constantes relacionas permitiendo agruparlos
 * en un mismo tipo de dato.
 */
void main() {
  // create enum instances
  final yourPlanet = Planet.earth;
  print('yourPlanet = $yourPlanet');

  // use readonly property
  if (!yourPlanet.isGiant) {
    print('Your planet is no a giant planet.');
  }

  // create other enums instance with shorthand example
  Planet myPlanet1 = Planet.venus;
  Planet myPlanet2 = .venus;
  print('myPlanet1: $myPlanet1');
  print('myPlanet2: $myPlanet2');
  print(myPlanet1 == myPlanet2);

  // end application
  systemPause();
}

/// Enumeración que representa los tipos de planetas.
enum PlanetType { terrestial, gas, ice }

/// Enumeración que almacena los diferentes plantes de nuestro
/// sistema solar.
enum Planet {
  mercury(planetType: PlanetType.terrestial, moons: 1, hasRings: false),
  venus(planetType: PlanetType.terrestial, moons: 1, hasRings: false),
  earth(planetType: PlanetType.terrestial, moons: 1, hasRings: false),
  mars(planetType: PlanetType.terrestial, moons: 0, hasRings: false),
  saturn(planetType: PlanetType.gas, moons: 10, hasRings: true),
  uranus(planetType: PlanetType.gas, moons: 3, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 5, hasRings: false);

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  // constructor with named parameters
  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  // get
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}
