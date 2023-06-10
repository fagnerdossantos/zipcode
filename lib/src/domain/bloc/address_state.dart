part of 'address_bloc.dart';

@immutable
sealed class AddressState {}

final class AddressInitial extends AddressState {}

final class AddressSuccess extends AddressState {
  final ZipCodeResponseModel model;

  AddressSuccess({required this.model});
}

final class AddressLoading extends AddressState {}

final class AddressNotFound extends AddressState {
  final String message;

  AddressNotFound({required this.message});
}
