// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_species.dart';

class PokemonSpeciesMapper extends ClassMapperBase<PokemonSpecies> {
  PokemonSpeciesMapper._();

  static PokemonSpeciesMapper? _instance;
  static PokemonSpeciesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonSpeciesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonSpecies';

  static String _$url(PokemonSpecies v) => v.url;
  static const Field<PokemonSpecies, String> _f$url = Field('url', _$url);
  static String _$name(PokemonSpecies v) => v.name;
  static const Field<PokemonSpecies, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<PokemonSpecies> fields = const {
    #url: _f$url,
    #name: _f$name,
  };

  static PokemonSpecies _instantiate(DecodingData data) {
    return PokemonSpecies(url: data.dec(_f$url), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonSpecies fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonSpecies>(map);
  }

  static PokemonSpecies fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonSpecies>(json);
  }
}

mixin PokemonSpeciesMappable {
  String toJson() {
    return PokemonSpeciesMapper.ensureInitialized().encodeJson<PokemonSpecies>(
      this as PokemonSpecies,
    );
  }

  Map<String, dynamic> toMap() {
    return PokemonSpeciesMapper.ensureInitialized().encodeMap<PokemonSpecies>(
      this as PokemonSpecies,
    );
  }

  PokemonSpeciesCopyWith<PokemonSpecies, PokemonSpecies, PokemonSpecies>
  get copyWith => _PokemonSpeciesCopyWithImpl<PokemonSpecies, PokemonSpecies>(
    this as PokemonSpecies,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PokemonSpeciesMapper.ensureInitialized().stringifyValue(
      this as PokemonSpecies,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonSpeciesMapper.ensureInitialized().equalsValue(
      this as PokemonSpecies,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonSpeciesMapper.ensureInitialized().hashValue(
      this as PokemonSpecies,
    );
  }
}

extension PokemonSpeciesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonSpecies, $Out> {
  PokemonSpeciesCopyWith<$R, PokemonSpecies, $Out> get $asPokemonSpecies =>
      $base.as((v, t, t2) => _PokemonSpeciesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PokemonSpeciesCopyWith<$R, $In extends PokemonSpecies, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, String? name});
  PokemonSpeciesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokemonSpeciesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonSpecies, $Out>
    implements PokemonSpeciesCopyWith<$R, PokemonSpecies, $Out> {
  _PokemonSpeciesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonSpecies> $mapper =
      PokemonSpeciesMapper.ensureInitialized();
  @override
  $R call({String? url, String? name}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (name != null) #name: name,
    }),
  );
  @override
  PokemonSpecies $make(CopyWithData data) => PokemonSpecies(
    url: data.get(#url, or: $value.url),
    name: data.get(#name, or: $value.name),
  );

  @override
  PokemonSpeciesCopyWith<$R2, PokemonSpecies, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PokemonSpeciesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

