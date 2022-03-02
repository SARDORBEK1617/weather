class Weather {
  int? id;
  String? main;
  List<int>? description;

  Weather({
    this.id,
    this.main,
    this.description,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;

    return data;
  }
}
