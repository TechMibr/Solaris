import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  TextEditingController temperaturaCelsiusController = TextEditingController();

  converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Primeira Rota'),
        ),
        body: Column(
          children: [
            TextField(
              controller: temperaturaCelsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => temperaturaCelsiusController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'temperatura em graus Celsius',
              ),
            ),
            ElevatedButton(
              child: Text("Converter"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota(
                    'Segunda Rota',
                    'Mensagem enviada da Primeira para a Segunda Rota como Argumento.',
                  ),
                );
              },
            ),
          ],
        ));
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Text(
          argumentos.mensagem,
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  String mensagem;
  ArgumentosDaRota(this.titulo, this.mensagem);
}