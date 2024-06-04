import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallListScreen(),
      theme: ThemeData
          .dark(),
    );
  }
}

class CallListScreen extends StatelessWidget {
  final List<Call> calls = [
    Call(
        name: "Mi Esposo",
        date: "10:33 p.m.",
        type: "WhatsApp de audio",
        icon: Icons.phone),
    Call(
        name: "Ronald Reyes PUCMM",
        date: "9:52 p.m.",
        type: "WA Business de audio",
        icon: Icons.phone),
    Call(
        name: "Amalfi Pérez PUCMM (4)",
        date: "6:43 p.m.",
        type: "WA Business de audio",
        icon: Icons.phone),
    Call(
        name: "Mi Esposo",
        date: "ayer",
        type: "WhatsApp de audio",
        icon: Icons.phone),
    Call(
        name: "Amalfi Pérez PUCMM",
        date: "ayer",
        type: "WA Business de audio",
        icon: Icons.phone),
    Call(
        name: "Mi Esposo",
        date: "ayer",
        type: "WhatsApp (video)",
        icon: Icons.videocam),
    Call(
        name: "Mami",
        date: "ayer",
        type: "WhatsApp (video)",
        icon: Icons.videocam),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recientes'),
      ),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo-llamada.png'),
            ),
            title: Text(call.name),
            subtitle: Text(call.type),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(call.date),
                Icon(call.icon),
              ],
            ),
            onTap: () {
              // Acción al tocar el ícono de información (puede abrir detalles de la llamada)
            },
          );
        },
      ),
    );
  }
}

class Call {
  final String name;
  final String date;
  final String type;
  final IconData icon;

  Call(
      {required this.name,
      required this.date,
      required this.type,
      required this.icon});
}
