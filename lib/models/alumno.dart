import 'dart:convert';

List<Alumno> alumnoFromJson(String str) => List<Alumno>.from(json.decode(str).map((x) => Alumno.fromJson(x)));

String alumnoToJson(List<Alumno> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Alumno {
    Alumno({
        required this.alumno,
        required this.curso,
        required this.fechaInicio,
        required this.fechaFin,
    });

    String alumno;
    String curso;
    String fechaInicio;
    String fechaFin;

    factory Alumno.fromJson(Map<String, dynamic> json) => Alumno(
        alumno: json["Alumno"],
        curso: json["Curso"],
        fechaInicio: json["Fecha_Inicio"],
        fechaFin: json["Fecha_Fin"],
    );

    Map<String, dynamic> toJson() => {
        "Alumno": alumno,
        "Curso": curso,
        "Fecha_Inicio": fechaInicio,
        "Fecha_Fin": fechaFin,
    };
}