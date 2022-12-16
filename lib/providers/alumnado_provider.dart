import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:seneca/models/alumno.dart';

class AlumnadoProvider extends ChangeNotifier {

  List<Alumno> expulsadosList = [];
  List<Alumno> convivenciaList = [];


  AlumnadoProvider() {
    getExpulsados();
    getConvivencia();
  }

  Future<String> _getJsonData(String sheet) async {
    var url = "https://script.google.com/macros/s/AKfycbw1FDUd_xzmsszTMHvynzYDX-xzlEgLrUlHNDEmqp1R7xMtFFTABzQQbgp_li1ihjkm/dev?spreadsheetId=16Ax_Twg7XBxGOt_dIZEH7h3jLg8ESVhx9JWHl8DyESw&sheet=$sheet";
    var response = await http.get(Uri.parse(url));

    return response.body;
  }

  getExpulsados() async {
    final jsonData = jsonDecode(await _getJsonData("expulsado"));

    for (dynamic data in jsonData)
    {
      Alumno alumno = Alumno(
        alumno: data["Alumno"],
        curso: data["Curso"],
        fechaInicio: data["Fecha_Inicio"],
        fechaFin: data["Fecha_Fin"]
      );

      expulsadosList = [...expulsadosList, alumno];
    }

    notifyListeners();
  }

  getConvivencia() async {
    final jsonData = jsonDecode(await _getJsonData("convivencia"));

    for (dynamic data in jsonData)
    {
      Alumno alumno = Alumno(
        alumno: data["Alumno"],
        curso: data["Curso"],
        fechaInicio: data["Fecha_Inicio"],
        fechaFin: data["Fecha_Fin"]
      );

      convivenciaList = [...convivenciaList, alumno];
    }

    notifyListeners();
  }
}