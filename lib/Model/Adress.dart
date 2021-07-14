class Adress {
  String? placeFormatedAdress;
  String? placeName;
  String? placeId;
  double? longitude;
  double? latitude;

  Adress(
      {required this.placeFormatedAdress,
      required this.placeName,
      required this.placeId,
      required this.longitude,
      required this.latitude});

  Adress.fromJson(Map<String, dynamic> json) {
    placeFormatedAdress = json['placeFormatedAdress'];
    placeName = json['placeName'];
    placeId = json['placeId'];
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['placeFormatedAdress'] = this.placeFormatedAdress;
    data['placeName'] = this.placeName;
    data['placeId'] = this.placeId;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    return data;
  }
}
