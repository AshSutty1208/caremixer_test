// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_species_detail.dart';

class PokemonSpeciesDetailMapper extends ClassMapperBase<PokemonSpeciesDetail> {
  PokemonSpeciesDetailMapper._();

  static PokemonSpeciesDetailMapper? _instance;
  static PokemonSpeciesDetailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonSpeciesDetailMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonSpeciesDetail';

  static int _$id(PokemonSpeciesDetail v) => v.id;
  static const Field<PokemonSpeciesDetail, int> _f$id = Field('id', _$id);
  static String _$growthRate(PokemonSpeciesDetail v) => v.growthRate;
  static const Field<PokemonSpeciesDetail, String> _f$growthRate = Field(
    'growthRate',
    _$growthRate,
  );
  static String _$habitat(PokemonSpeciesDetail v) => v.habitat;
  static const Field<PokemonSpeciesDetail, String> _f$habitat = Field(
    'habitat',
    _$habitat,
  );
  static String _$description(PokemonSpeciesDetail v) => v.description;
  static const Field<PokemonSpeciesDetail, String> _f$description = Field(
    'description',
    _$description,
  );
  static int _$captureRate(PokemonSpeciesDetail v) => v.captureRate;
  static const Field<PokemonSpeciesDetail, int> _f$captureRate = Field(
    'captureRate',
    _$captureRate,
  );
  static String _$shape(PokemonSpeciesDetail v) => v.shape;
  static const Field<PokemonSpeciesDetail, String> _f$shape = Field(
    'shape',
    _$shape,
  );

  @override
  final MappableFields<PokemonSpeciesDetail> fields = const {
    #id: _f$id,
    #growthRate: _f$growthRate,
    #habitat: _f$habitat,
    #description: _f$description,
    #captureRate: _f$captureRate,
    #shape: _f$shape,
  };

  static PokemonSpeciesDetail _instantiate(DecodingData data) {
    return PokemonSpeciesDetail(
      id: data.dec(_f$id),
      growthRate: data.dec(_f$growthRate),
      habitat: data.dec(_f$habitat),
      description: data.dec(_f$description),
      captureRate: data.dec(_f$captureRate),
      shape: data.dec(_f$shape),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonSpeciesDetail fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonSpeciesDetail>(map);
  }

  static PokemonSpeciesDetail fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonSpeciesDetail>(json);
  }
}

mixin PokemonSpeciesDetailMappable {
  String toJson() {
    return PokemonSpeciesDetailMapper.ensureInitialized()
        .encodeJson<PokemonSpeciesDetail>(this as PokemonSpeciesDetail);
  }

  Map<String, dynamic> toMap() {
    return PokemonSpeciesDetailMapper.ensureInitialized()
        .encodeMap<PokemonSpeciesDetail>(this as PokemonSpeciesDetail);
  }

  PokemonSpeciesDetailCopyWith<
    PokemonSpeciesDetail,
    PokemonSpeciesDetail,
    PokemonSpeciesDetail
  >
  get copyWith =>
      _PokemonSpeciesDetailCopyWithImpl<
        PokemonSpeciesDetail,
        PokemonSpeciesDetail
      >(this as PokemonSpeciesDetail, $identity, $identity);
  @override
  String toString() {
    return PokemonSpeciesDetailMapper.ensureInitialized().stringifyValue(
      this as PokemonSpeciesDetail,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonSpeciesDetailMapper.ensureInitialized().equalsValue(
      this as PokemonSpeciesDetail,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonSpeciesDetailMapper.ensureInitialized().hashValue(
      this as PokemonSpeciesDetail,
    );
  }
}

extension PokemonSpeciesDetailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonSpeciesDetail, $Out> {
  PokemonSpeciesDetailCopyWith<$R, PokemonSpeciesDetail, $Out>
  get $asPokemonSpeciesDetail => $base.as(
    (v, t, t2) => _PokemonSpeciesDetailCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PokemonSpeciesDetailCopyWith<
  $R,
  $In extends PokemonSpeciesDetail,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? growthRate,
    String? habitat,
    String? description,
    int? captureRate,
    String? shape,
  });
  PokemonSpeciesDetailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokemonSpeciesDetailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonSpeciesDetail, $Out>
    implements PokemonSpeciesDetailCopyWith<$R, PokemonSpeciesDetail, $Out> {
  _PokemonSpeciesDetailCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonSpeciesDetail> $mapper =
      PokemonSpeciesDetailMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? growthRate,
    String? habitat,
    String? description,
    int? captureRate,
    String? shape,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (growthRate != null) #growthRate: growthRate,
      if (habitat != null) #habitat: habitat,
      if (description != null) #description: description,
      if (captureRate != null) #captureRate: captureRate,
      if (shape != null) #shape: shape,
    }),
  );
  @override
  PokemonSpeciesDetail $make(CopyWithData data) => PokemonSpeciesDetail(
    id: data.get(#id, or: $value.id),
    growthRate: data.get(#growthRate, or: $value.growthRate),
    habitat: data.get(#habitat, or: $value.habitat),
    description: data.get(#description, or: $value.description),
    captureRate: data.get(#captureRate, or: $value.captureRate),
    shape: data.get(#shape, or: $value.shape),
  );

  @override
  PokemonSpeciesDetailCopyWith<$R2, PokemonSpeciesDetail, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokemonSpeciesDetailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

