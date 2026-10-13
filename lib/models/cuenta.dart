class Cuenta {
  final String id;
  final int creada;
  final String nombre;
  final double saldoInicial;
  final String tipo;

  Cuenta({
    required this.id,
    required this.creada,
    required this.nombre,
    required this.saldoInicial,
    required this.tipo,
  });

  factory Cuenta.fromJson(Map<String, dynamic> json) {
    return Cuenta(
      id: json['id'] as String,
      creada: json['creada'] as int,
      nombre: json['nombre'] as String,
      saldoInicial: (json['saldoInicial'] as num).toDouble(),
      tipo: json['tipo'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'creada': creada,
      'nombre': nombre,
      'saldoInicial': saldoInicial,
      'tipo': tipo,
    };
  }
}
