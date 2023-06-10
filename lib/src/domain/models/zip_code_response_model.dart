class ZipCodeResponseModel {
  final String zipCode;
  final String street;
  final String neighborhood;
  final String city;
  final String state;

  ZipCodeResponseModel({
    required this.zipCode,
    required this.street,
    required this.neighborhood,
    required this.city,
    required this.state,
  });

  factory ZipCodeResponseModel.fromJson(Map<String, dynamic> json) {
    return ZipCodeResponseModel(
      zipCode: json['cep'],
      street: json['logradouro'],
      neighborhood: json['bairro'],
      city: json['localidade'],
      state: json['uf'],
    );
  }
}
