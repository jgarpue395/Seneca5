import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:seneca/models/usuario.dart';

class UserProvider extends ChangeNotifier {

  List<Usuario> userList = [];

  UserProvider() {
    getUser();
  }

  Future<String> _getJsonData() async {
    var url = "https://script.google.com/macros/s/AKfycbw1FDUd_xzmsszTMHvynzYDX-xzlEgLrUlHNDEmqp1R7xMtFFTABzQQbgp_li1ihjkm/dev?spreadsheetId=16Ax_Twg7XBxGOt_dIZEH7h3jLg8ESVhx9JWHl8DyESw&sheet=usuarios";
    var response = await http.get(Uri.parse(url));

    return response.body;
  }

  getUser() async {
    final jsonData = jsonDecode(await _getJsonData());

    for (dynamic data in jsonData)
    {
      Usuario usuario = Usuario(
        id: data["id"], 
        usuario: data["usuario"],
        clave: data["clave"],
        nombreCompleto: data["nombre_completo"],
        telefono: data["telefono"],
        mail: data["mail"]
      );

      userList = [...userList, usuario];
    }

    notifyListeners();
  }
}