class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;


  Weather({
    this.id,
    this.main,
    this.description,
   this.icon
  });

  Weather.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    main = map['main'];
    description = map['description'];
    icon = map['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;

    return data;
  }

}
