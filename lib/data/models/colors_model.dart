class Colors {
  Colors({
    required this.colorA,
    required this.colorB,
  });

  String colorA;
  String colorB;

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
    colorA: json["color_a"],
    colorB: json["color_b"],
  );


}