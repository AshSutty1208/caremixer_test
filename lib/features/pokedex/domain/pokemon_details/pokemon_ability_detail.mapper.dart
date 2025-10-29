// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_ability_detail.dart';

class PokemonAbilityDetailMapper extends ClassMapperBase<PokemonAbilityDetail> {
  PokemonAbilityDetailMapper._();

  static PokemonAbilityDetailMapper? _instance;
  static PokemonAbilityDetailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonAbilityDetailMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonAbilityDetail';

  static String _$url(PokemonAbilityDetail v) => v.url;
  static const Field<PokemonAbilityDetail, String> _f$url = Field('url', _$url);
  static String _$name(PokemonAbilityDetail v) => v.name;
  static const Field<PokemonAbilityDetail, String> _f$name = Field(
    'name',
    _$name,
  );

  @override
  final MappableFields<PokemonAbilityDetail> fields = const {
    #url: _f$url,
    #name: _f$name,
  };

  static PokemonAbilityDetail _instantiate(DecodingData data) {
    return PokemonAbilityDetail(url: data.dec(_f$url), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonAbilityDetail fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonAbilityDetail>(map);
  }

  static PokemonAbilityDetail fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonAbilityDetail>(json);
  }
}

mixin PokemonAbilityDetailMappable {
  String toJson() {
    return PokemonAbilityDetailMapper.ensureInitialized()
        .encodeJson<PokemonAbilityDetail>(this as PokemonAbilityDetail);
  }

  Map<String, dynamic> toMap() {
    return PokemonAbilityDetailMapper.ensureInitialized()
        .encodeMap<PokemonAbilityDetail>(this as PokemonAbilityDetail);
  }

  PokemonAbilityDetailCopyWith<
    PokemonAbilityDetail,
    PokemonAbilityDetail,
    PokemonAbilityDetail
  >
  get copyWith =>
      _PokemonAbilityDetailCopyWithImpl<
        PokemonAbilityDetail,
        PokemonAbilityDetail
      >(this as PokemonAbilityDetail, $identity, $identity);
  @override
  String toString() {
    return PokemonAbilityDetailMapper.ensureInitialized().stringifyValue(
      this as PokemonAbilityDetail,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonAbilityDetailMapper.ensureInitialized().equalsValue(
      this as PokemonAbilityDetail,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonAbilityDetailMapper.ensureInitialized().hashValue(
      this as PokemonAbilityDetail,
    );
  }
}

extension PokemonAbilityDetailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonAbilityDetail, $Out> {
  PokemonAbilityDetailCopyWith<$R, PokemonAbilityDetail, $Out>
  get $asPokemonAbilityDetail => $base.as(
    (v, t, t2) => _PokemonAbilityDetailCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PokemonAbilityDetailCopyWith<
  $R,
  $In extends PokemonAbilityDetail,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, String? name});
  PokemonAbilityDetailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokemonAbilityDetailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonAbilityDetail, $Out>
    implements PokemonAbilityDetailCopyWith<$R, PokemonAbilityDetail, $Out> {
  _PokemonAbilityDetailCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonAbilityDetail> $mapper =
      PokemonAbilityDetailMapper.ensureInitialized();
  @override
  $R call({String? url, String? name}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (name != null) #name: name,
    }),
  );
  @override
  PokemonAbilityDetail $make(CopyWithData data) => PokemonAbilityDetail(
    url: data.get(#url, or: $value.url),
    name: data.get(#name, or: $value.name),
  );

  @override
  PokemonAbilityDetailCopyWith<$R2, PokemonAbilityDetail, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokemonAbilityDetailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

