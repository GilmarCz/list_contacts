import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue, // Cor principal
          accentColor: Colors.white, // Cor de destaque
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Contact("R", "Romain Hoogmoed", "romain.hoogmoed@example.com"),
                Contact("E", "Emilie Olsen", "emille.olsen@example.com"),
                Contact("T", "Téo Lefevre", "teo.lefevre@example.com"),
                Contact("N", "Nicole Cruz", "nicole.cruz@example.com"),
                Contact("R", "Ramna Peixoto", "ramna.peixoto@example.com"),
                Contact("J", "José Ortiz", "jose.ortiz@example.com"),
                Contact("A", "Alma Christensen", "alma.christensen@example.com"),
                Contact("S", "Sergio Hill", "sergio.hill@example.com"),
                Contact("M", "Malo González", "malo.gonzalez@example.com"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String startLetter;
  final String name;
  final String email;

  const Contact(this.startLetter, this.name, this.email, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(startLetter)),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}
