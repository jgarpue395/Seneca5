import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        required this.id,
        required this.usuario,
        required this.clave,
        required this.nombreCompleto,
        required this.telefono,
        required this.mail,
    });

    String id;
    String usuario;
    String clave;
    String nombreCompleto;
    String telefono;
    String mail;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        usuario: json["usuario"],
        clave: json["clave"],
        nombreCompleto: json["nombre_completo"],
        telefono: json["telefono"],
        mail: json["mail"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "usuario": usuario,
        "clave": clave,
        "nombre_completo": nombreCompleto,
        "telefono": telefono,
        "mail": mail,
    };
}