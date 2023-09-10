import 'package:app_sum/suma.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  /// La función de compilación devuelve un widget MaterialApp con el título 'Suma',
  /// debugShowCheckedModeBanner configurado en falso y la página de inicio configurada en SumaPage.
  /// 
  /// Args:
  ///   context (BuildContext): El parámetro de contexto es una referencia al contexto de compilación
  /// actual. Proporciona acceso a diversa información y servicios relacionados con la compilación
  /// actual, como el tema, la localización y la navegación. Normalmente se utiliza para acceder a
  /// recursos y widgets dentro del árbol de widgets.
  /// 
  /// Returns:
  ///   El método `build` devuelve un widget `MaterialApp`.
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Suma', debugShowCheckedModeBanner: false, home: SumaPage());
  }
}
