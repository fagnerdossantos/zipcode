class AddressModel {
  // Attributes
  final String zipcode;
  final String street;
  final String district;
  final String city;
  final String state;

  AddressModel({
    required this.zipcode,
    required this.street,
    required this.district,
    required this.city,
    required this.state,
  });

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      zipcode: map['cep'] ?? '',
      street: map['logradouro'] ?? '',
      district: map['bairro'] ?? '',
      city: map['localidade'] ?? '',
      state: map['uf'] ?? '',
    );
  }
}
