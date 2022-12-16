import 'package:flutter/material.dart';
import 'package:seneca/models/alumno.dart';

class ListadoAlumnadoScreen extends StatelessWidget {
  final String title;
  final List<Alumno> alumnadoList;

  const ListadoAlumnadoScreen({super.key, required this.title, required this.alumnadoList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alumnado $title"),
      ),

      body: ListView.builder(
        itemCount: alumnadoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${alumnadoList[index].alumno} - ${alumnadoList[index].curso} - ${alumnadoList[index].fechaInicio} - ${alumnadoList[index].fechaFin}"),
          );
        },
      )
    );
  }
}