import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country extends Equatable with _$Country {
  const factory Country({
    required String name,
    required String flag,
    required List<String> displayExchange,
    required String code,
  }) = _Country;

  const Country._();

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  List<Object?> get props => [name, code];
}
