import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolinera Puma'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('INICIO'),
          ),
          TextButton(style: style, onPressed: () {}, child: const Text('MAPA')),
          TextButton(
              style: style,
              onPressed: () {
                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => Register()));
              },
              child: const Text('PERFIL'))
        ],
      ),
      body: Cuerpo(),
    );
  }
}

Widget Cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
      ),
    ),
    child: Conceptos(),
  );
}

Widget Conceptos() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'GASOLINERIA PUMA',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ],
        )
      ],
    ),
  );
}
