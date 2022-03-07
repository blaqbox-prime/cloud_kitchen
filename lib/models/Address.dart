class Address {
  late final String street;
  late final String suburb;
  late final String city;
  late final String province;
  late final String zipCode;
  Address({
    required this.street,
    required this.suburb,
    required this.city,
    required this.province,
    required this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'suburb': suburb,
      'city': city,
      'province': province,
      'zipCode': zipCode,
    };
  }

  Address.fromMap(Map<String, dynamic> data) {
    street = data['street'];
    suburb = data['suburb'];
    city = data['city'];
    province = data['province'];
    zipCode = data['zipCode'];
  }

  String asString() {
    return "{$street}, {$suburb}, {$city}, {$province}, {$zipCode}";
  }

  Address.fromString(String address) {
    final address_array = address.split(",");
    street = address_array[0];
    suburb = address_array[1];
    city = address_array[2];
    province = address_array[3];
    zipCode = address_array[4];
  }
}
