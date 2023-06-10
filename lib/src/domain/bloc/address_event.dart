part of 'address_bloc.dart';

@immutable
abstract class AddressEvent {}

final class SearchEvent extends AddressEvent {
  final String code;

  SearchEvent({required this.code});
}

final class BackEvent extends AddressEvent {}
