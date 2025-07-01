class PlacesDetailsResponse {
  PlaceDetails? result;
  String? status;

  PlacesDetailsResponse({this.result, this.status});

  PlacesDetailsResponse.fromJson(Map<String, dynamic> json) {
    result = json['result'] != null
        ? PlaceDetails.fromJson(json['result'])
        : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class PlaceDetails {
  String? placeId;
  String? name;
  String? address;
  double? lat;
  double? lng;

  PlaceDetails({this.placeId, this.name, this.address, this.lat, this.lng});

  PlaceDetails.fromJson(Map<String, dynamic> json) {
    placeId = json['place_id'];
    name = json['name'];
    address = json['formatted_address'];
    lat = json['geometry']?['location']?['lat']?.toDouble();
    lng = json['geometry']?['location']?['lng']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['place_id'] = this.placeId;
    data['name'] = this.name;
    data['formatted_address'] = this.address;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}
