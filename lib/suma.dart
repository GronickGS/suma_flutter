import 'package:flutter/material.dart';

class SumaPage extends StatefulWidget {
  const SumaPage({super.key});

  @override
  State<SumaPage> createState() => _SumaPageState();
}

class _SumaPageState extends State<SumaPage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double resultado = 0;

  void calcularSuma() {
    double numero1 = double.tryParse(num1.text) ?? 0;
    double numero2 = double.tryParse(num2.text) ?? 0;
    double resul = numero1 + numero2;
    setState(() {
      resultado = resul;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SUMA"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
        child: Column(
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 2'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calcularSuma, // Llama a la función para calcular la suma
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Resultado: $resultado',
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
