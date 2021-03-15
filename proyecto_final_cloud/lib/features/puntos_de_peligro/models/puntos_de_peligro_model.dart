import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

PuntosDePeligroModel puntosDePeligroModelFromJson(String str) => PuntosDePeligroModel.fromJson(json.decode(str));

String puntosDePeligroModelToJson(PuntosDePeligroModel data) => json.encode(data.toJson());

class PuntosDePeligroModel {
    PuntosDePeligroModel({
        required this.id,
        required this.posicion,
        required this.descripcion,
        required this.tipo,
        required this.estado,
        required this.createdAt,
        required this.createdBy,
    });

    String id;
    String descripcion;
    String tipo;
    String estado;
    String createdAt;
    String createdBy;
    GeoPoint posicion;

    factory PuntosDePeligroModel.fromJson(Map<String, dynamic> json) => PuntosDePeligroModel(
        id: json["id"],
        posicion: json['posicion'],
        descripcion: json["descripcion"],
        tipo: json["tipo"],
        estado: json["estado"],
        createdAt: json["createdAt"],
        createdBy: json["createdBy"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "posicion":posicion,
        "descripcion": descripcion,
        "tipo": tipo,
        "estado": estado,
        "createdAt": createdAt,
        "createdBy": createdBy,
    };
}