import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/Screens/listado_alumnos_screen.dart';
import 'package:seneca/models/alumno.dart';
import '../providers/alumnado_provider.dart';

class AlumnadoScreen extends StatelessWidget {
  const AlumnadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alumnProvider = Provider.of<AlumnadoProvider>(context);
    List<Alumno> alumnadoList;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Alumnado del centro"),
      ),

      body: Column(
        children: [
          ListTile(
            title:const Text("Alumnado Expulsado"),
            onTap: () {
              alumnadoList = alumnProvider.expulsadosList;
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListadoAlumnadoScreen(title: "Expulsado", alumnadoList: alumnadoList)));
            } 
          ),

          ListTile(
            title:const Text("Alumnado Convivencia"),
            onTap: () {
              alumnadoList = alumnProvider.convivenciaList;
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListadoAlumnadoScreen(title: "Convivencia", alumnadoList: alumnadoList)));
            } 
          ),
        ],
      )
    );  
  }
}