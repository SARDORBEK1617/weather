class Weather {
  int? id;
  String? main;
  String? description;

  Weather({
    this.id,
    this.main,
    this.description,
  });

  Weather.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    main = map['main'];
    description = map['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;

    return data;
  }
}
