import 'dart:convert';

List<Usuario> userFromJson(String str) => List<Usuario>.from(json.decode(str).map((x) => Usuario.fromJson(x)));

String userToJson(List<Usuario> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Usuario {
    Usuario({
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

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
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