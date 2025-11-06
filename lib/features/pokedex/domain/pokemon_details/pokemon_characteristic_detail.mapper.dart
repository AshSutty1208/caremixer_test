// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_characteristic_detail.dart';

class PokemonCharacteristicDetailMapper
    extends ClassMapperBase<PokemonCharacteristicDetail> {
  PokemonCharacteristicDetailMapper._();

  static PokemonCharacteristicDetailMapper? _instance;
  static PokemonCharacteristicDetailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = PokemonCharacteristicDetailMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonCharacteristicDetail';

  static int _$id(PokemonCharacteristicDetail v) => v.id;
  static const Field<PokemonCharacteristicDetail, int> _f$id = Field(
    'id',
    _$id,
  );
  static List<int> _$possibleValues(PokemonCharacteristicDetail v) =>
      v.possibleValues;
  static const Field<PokemonCharacteristicDetail, List<int>> _f$possibleValues =
      Field('possibleValues', _$possibleValues);
  static String _$highestStat(PokemonCharacteristicDetail v) => v.highestStat;
  static const Field<PokemonCharacteristicDetail, String> _f$highestStat =
      Field('highestStat', _$highestStat);
  static String _$description(PokemonCharacteristicDetail v) => v.description;
  static const Field<PokemonCharacteristicDetail, String> _f$description =
      Field('description', _$description);

  @override
  final MappableFields<PokemonCharacteristicDetail> fields = const {
    #id: _f$id,
    #possibleValues: _f$possibleValues,
    #highestStat: _f$highestStat,
    #description: _f$description,
  };

  static PokemonCharacteristicDetail _instantiate(DecodingData data) {
    return PokemonCharacteristicDetail(
      id: data.dec(_f$id),
      possibleValues: data.dec(_f$possibleValues),
      highestStat: data.dec(_f$highestStat),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonCharacteristicDetail fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonCharacteristicDetail>(map);
  }

  static PokemonCharacteristicDetail fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonCharacteristicDetail>(json);
  }
}

mixin PokemonCharacteristicDetailMappable {
  String toJson() {
    return PokemonCharacteristicDetailMapper.ensureInitialized()
        .encodeJson<PokemonCharacteristicDetail>(
          this as PokemonCharacteristicDetail,
        );
  }

  Map<String, dynamic> toMap() {
    return PokemonCharacteristicDetailMapper.ensureInitialized()
        .encodeMap<PokemonCharacteristicDetail>(
          this as PokemonCharacteristicDetail,
        );
  }

  PokemonCharacteristicDetailCopyWith<
    PokemonCharacteristicDetail,
    PokemonCharacteristicDetail,
    PokemonCharacteristicDetail
  >
  get copyWith =>
      _PokemonCharacteristicDetailCopyWithImpl<
        PokemonCharacteristicDetail,
        PokemonCharacteristicDetail
      >(this as PokemonCharacteristicDetail, $identity, $identity);
  @override
  String toString() {
    return PokemonCharacteristicDetailMapper.ensureInitialized().stringifyValue(
      this as PokemonCharacteristicDetail,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonCharacteristicDetailMapper.ensureInitialized().equalsValue(
      this as PokemonCharacteristicDetail,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonCharacteristicDetailMapper.ensureInitialized().hashValue(
      this as PokemonCharacteristicDetail,
    );
  }
}

extension PokemonCharacteristicDetailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonCharacteristicDetail, $Out> {
  PokemonCharacteristicDetailCopyWith<$R, PokemonCharacteristicDetail, $Out>
  get $asPokemonCharacteristicDetail => $base.as(
    (v, t, t2) => _PokemonCharacteristicDetailCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PokemonCharacteristicDetailCopyWith<
  $R,
  $In extends PokemonCharacteristicDetail,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get possibleValues;
  $R call({
    int? id,
    List<int>? possibleValues,
    String? highestStat,
    String? description,
  });
  PokemonCharacteristicDetailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokemonCharacteristicDetailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonCharacteristicDetail, $Out>
    implements
        PokemonCharacteristicDetailCopyWith<
          $R,
          PokemonCharacteristicDetail,
          $Out
        > {
  _PokemonCharacteristicDetailCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<PokemonCharacteristicDetail> $mapper =
      PokemonCharacteristicDetailMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get possibleValues =>
      ListCopyWith(
        $value.possibleValues,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(possibleValues: v),
      );
  @override
  $R call({
    int? id,
    List<int>? possibleValues,
    String? highestStat,
    String? description,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (possibleValues != null) #possibleValues: possibleValues,
      if (highestStat != null) #highestStat: highestStat,
      if (description != null) #description: description,
    }),
  );
  @override
  PokemonCharacteristicDetail $make(CopyWithData data) =>
      PokemonCharacteristicDetail(
        id: data.get(#id, or: $value.id),
        possibleValues: data.get(#possibleValues, or: $value.possibleValues),
        highestStat: data.get(#highestStat, or: $value.highestStat),
        description: data.get(#description, or: $value.description),
      );

  @override
  PokemonCharacteristicDetailCopyWith<$R2, PokemonCharacteristicDetail, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokemonCharacteristicDetailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

