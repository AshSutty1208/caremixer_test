// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_abilities.dart';

class PokemonAbilitiesMapper extends ClassMapperBase<PokemonAbilities> {
  PokemonAbilitiesMapper._();

  static PokemonAbilitiesMapper? _instance;
  static PokemonAbilitiesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonAbilitiesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonAbilities';

  static bool _$isHidden(PokemonAbilities v) => v.isHidden;
  static const Field<PokemonAbilities, bool> _f$isHidden = Field(
    'isHidden',
    _$isHidden,
  );
  static int _$slot(PokemonAbilities v) => v.slot;
  static const Field<PokemonAbilities, int> _f$slot = Field('slot', _$slot);
  static String _$abilityName(PokemonAbilities v) => v.abilityName;
  static const Field<PokemonAbilities, String> _f$abilityName = Field(
    'abilityName',
    _$abilityName,
  );
  static String _$abilityUrl(PokemonAbilities v) => v.abilityUrl;
  static const Field<PokemonAbilities, String> _f$abilityUrl = Field(
    'abilityUrl',
    _$abilityUrl,
  );

  @override
  final MappableFields<PokemonAbilities> fields = const {
    #isHidden: _f$isHidden,
    #slot: _f$slot,
    #abilityName: _f$abilityName,
    #abilityUrl: _f$abilityUrl,
  };

  static PokemonAbilities _instantiate(DecodingData data) {
    return PokemonAbilities(
      isHidden: data.dec(_f$isHidden),
      slot: data.dec(_f$slot),
      abilityName: data.dec(_f$abilityName),
      abilityUrl: data.dec(_f$abilityUrl),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonAbilities fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonAbilities>(map);
  }

  static PokemonAbilities fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonAbilities>(json);
  }
}

mixin PokemonAbilitiesMappable {
  String toJson() {
    return PokemonAbilitiesMapper.ensureInitialized()
        .encodeJson<PokemonAbilities>(this as PokemonAbilities);
  }

  Map<String, dynamic> toMap() {
    return PokemonAbilitiesMapper.ensureInitialized()
        .encodeMap<PokemonAbilities>(this as PokemonAbilities);
  }

  PokemonAbilitiesCopyWith<PokemonAbilities, PokemonAbilities, PokemonAbilities>
  get copyWith =>
      _PokemonAbilitiesCopyWithImpl<PokemonAbilities, PokemonAbilities>(
        this as PokemonAbilities,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PokemonAbilitiesMapper.ensureInitialized().stringifyValue(
      this as PokemonAbilities,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonAbilitiesMapper.ensureInitialized().equalsValue(
      this as PokemonAbilities,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonAbilitiesMapper.ensureInitialized().hashValue(
      this as PokemonAbilities,
    );
  }
}

extension PokemonAbilitiesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonAbilities, $Out> {
  PokemonAbilitiesCopyWith<$R, PokemonAbilities, $Out>
  get $asPokemonAbilities =>
      $base.as((v, t, t2) => _PokemonAbilitiesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PokemonAbilitiesCopyWith<$R, $In extends PokemonAbilities, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isHidden, int? slot, String? abilityName, String? abilityUrl});
  PokemonAbilitiesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokemonAbilitiesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonAbilities, $Out>
    implements PokemonAbilitiesCopyWith<$R, PokemonAbilities, $Out> {
  _PokemonAbilitiesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonAbilities> $mapper =
      PokemonAbilitiesMapper.ensureInitialized();
  @override
  $R call({
    bool? isHidden,
    int? slot,
    String? abilityName,
    String? abilityUrl,
  }) => $apply(
    FieldCopyWithData({
      if (isHidden != null) #isHidden: isHidden,
      if (slot != null) #slot: slot,
      if (abilityName != null) #abilityName: abilityName,
      if (abilityUrl != null) #abilityUrl: abilityUrl,
    }),
  );
  @override
  PokemonAbilities $make(CopyWithData data) => PokemonAbilities(
    isHidden: data.get(#isHidden, or: $value.isHidden),
    slot: data.get(#slot, or: $value.slot),
    abilityName: data.get(#abilityName, or: $value.abilityName),
    abilityUrl: data.get(#abilityUrl, or: $value.abilityUrl),
  );

  @override
  PokemonAbilitiesCopyWith<$R2, PokemonAbilities, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PokemonAbilitiesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

