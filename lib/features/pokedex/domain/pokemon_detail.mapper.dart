// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_detail.dart';

class PokemonDetailMapper extends ClassMapperBase<PokemonDetail> {
  PokemonDetailMapper._();

  static PokemonDetailMapper? _instance;
  static PokemonDetailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonDetailMapper._());
      PokemonTypeMapper.ensureInitialized();
      PokemonAbilitiesMapper.ensureInitialized();
      PokemonSpeciesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonDetail';

  static int _$id(PokemonDetail v) => v.id;
  static const Field<PokemonDetail, int> _f$id = Field('id', _$id);
  static int _$order(PokemonDetail v) => v.order;
  static const Field<PokemonDetail, int> _f$order = Field('order', _$order);
  static String _$name(PokemonDetail v) => v.name;
  static const Field<PokemonDetail, String> _f$name = Field(
    'name',
    _$name,
    hook: CapitalizeNameHook(),
  );
  static int _$baseExperience(PokemonDetail v) => v.baseExperience;
  static const Field<PokemonDetail, int> _f$baseExperience = Field(
    'baseExperience',
    _$baseExperience,
    key: r'base_experience',
  );
  static int _$weight(PokemonDetail v) => v.weight;
  static const Field<PokemonDetail, int> _f$weight = Field('weight', _$weight);
  static int _$height(PokemonDetail v) => v.height;
  static const Field<PokemonDetail, int> _f$height = Field('height', _$height);
  static bool _$isDefault(PokemonDetail v) => v.isDefault;
  static const Field<PokemonDetail, bool> _f$isDefault = Field(
    'isDefault',
    _$isDefault,
    key: r'is_default',
  );
  static String _$locationAreasUrl(PokemonDetail v) => v.locationAreasUrl;
  static const Field<PokemonDetail, String> _f$locationAreasUrl = Field(
    'locationAreasUrl',
    _$locationAreasUrl,
    key: r'location_area_encounters',
  );
  static String _$imageUrl(PokemonDetail v) => v.imageUrl;
  static const Field<PokemonDetail, String> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
  );
  static List<PokemonType> _$pokemonTypes(PokemonDetail v) => v.pokemonTypes;
  static const Field<PokemonDetail, List<PokemonType>> _f$pokemonTypes = Field(
    'pokemonTypes',
    _$pokemonTypes,
    key: r'types',
  );
  static List<PokemonAbilities> _$pokemonAbilities(PokemonDetail v) =>
      v.pokemonAbilities;
  static const Field<PokemonDetail, List<PokemonAbilities>>
  _f$pokemonAbilities = Field(
    'pokemonAbilities',
    _$pokemonAbilities,
    key: r'abilities',
  );
  static PokemonSpecies _$pokemonSpecies(PokemonDetail v) => v.pokemonSpecies;
  static const Field<PokemonDetail, PokemonSpecies> _f$pokemonSpecies = Field(
    'pokemonSpecies',
    _$pokemonSpecies,
    key: r'species',
    hook: PokemonSpeciesHook(),
  );

  @override
  final MappableFields<PokemonDetail> fields = const {
    #id: _f$id,
    #order: _f$order,
    #name: _f$name,
    #baseExperience: _f$baseExperience,
    #weight: _f$weight,
    #height: _f$height,
    #isDefault: _f$isDefault,
    #locationAreasUrl: _f$locationAreasUrl,
    #imageUrl: _f$imageUrl,
    #pokemonTypes: _f$pokemonTypes,
    #pokemonAbilities: _f$pokemonAbilities,
    #pokemonSpecies: _f$pokemonSpecies,
  };

  static PokemonDetail _instantiate(DecodingData data) {
    return PokemonDetail(
      id: data.dec(_f$id),
      order: data.dec(_f$order),
      name: data.dec(_f$name),
      baseExperience: data.dec(_f$baseExperience),
      weight: data.dec(_f$weight),
      height: data.dec(_f$height),
      isDefault: data.dec(_f$isDefault),
      locationAreasUrl: data.dec(_f$locationAreasUrl),
      imageUrl: data.dec(_f$imageUrl),
      pokemonTypes: data.dec(_f$pokemonTypes),
      pokemonAbilities: data.dec(_f$pokemonAbilities),
      pokemonSpecies: data.dec(_f$pokemonSpecies),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonDetail fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonDetail>(map);
  }

  static PokemonDetail fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonDetail>(json);
  }
}

mixin PokemonDetailMappable {
  String toJson() {
    return PokemonDetailMapper.ensureInitialized().encodeJson<PokemonDetail>(
      this as PokemonDetail,
    );
  }

  Map<String, dynamic> toMap() {
    return PokemonDetailMapper.ensureInitialized().encodeMap<PokemonDetail>(
      this as PokemonDetail,
    );
  }

  PokemonDetailCopyWith<PokemonDetail, PokemonDetail, PokemonDetail>
  get copyWith => _PokemonDetailCopyWithImpl<PokemonDetail, PokemonDetail>(
    this as PokemonDetail,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PokemonDetailMapper.ensureInitialized().stringifyValue(
      this as PokemonDetail,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonDetailMapper.ensureInitialized().equalsValue(
      this as PokemonDetail,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonDetailMapper.ensureInitialized().hashValue(
      this as PokemonDetail,
    );
  }
}

extension PokemonDetailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonDetail, $Out> {
  PokemonDetailCopyWith<$R, PokemonDetail, $Out> get $asPokemonDetail =>
      $base.as((v, t, t2) => _PokemonDetailCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PokemonDetailCopyWith<$R, $In extends PokemonDetail, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    PokemonType,
    PokemonTypeCopyWith<$R, PokemonType, PokemonType>
  >
  get pokemonTypes;
  ListCopyWith<
    $R,
    PokemonAbilities,
    PokemonAbilitiesCopyWith<$R, PokemonAbilities, PokemonAbilities>
  >
  get pokemonAbilities;
  PokemonSpeciesCopyWith<$R, PokemonSpecies, PokemonSpecies> get pokemonSpecies;
  $R call({
    int? id,
    int? order,
    String? name,
    int? baseExperience,
    int? weight,
    int? height,
    bool? isDefault,
    String? locationAreasUrl,
    String? imageUrl,
    List<PokemonType>? pokemonTypes,
    List<PokemonAbilities>? pokemonAbilities,
    PokemonSpecies? pokemonSpecies,
  });
  PokemonDetailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PokemonDetailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonDetail, $Out>
    implements PokemonDetailCopyWith<$R, PokemonDetail, $Out> {
  _PokemonDetailCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonDetail> $mapper =
      PokemonDetailMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    PokemonType,
    PokemonTypeCopyWith<$R, PokemonType, PokemonType>
  >
  get pokemonTypes => ListCopyWith(
    $value.pokemonTypes,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(pokemonTypes: v),
  );
  @override
  ListCopyWith<
    $R,
    PokemonAbilities,
    PokemonAbilitiesCopyWith<$R, PokemonAbilities, PokemonAbilities>
  >
  get pokemonAbilities => ListCopyWith(
    $value.pokemonAbilities,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(pokemonAbilities: v),
  );
  @override
  PokemonSpeciesCopyWith<$R, PokemonSpecies, PokemonSpecies>
  get pokemonSpecies =>
      $value.pokemonSpecies.copyWith.$chain((v) => call(pokemonSpecies: v));
  @override
  $R call({
    int? id,
    int? order,
    String? name,
    int? baseExperience,
    int? weight,
    int? height,
    bool? isDefault,
    String? locationAreasUrl,
    String? imageUrl,
    List<PokemonType>? pokemonTypes,
    List<PokemonAbilities>? pokemonAbilities,
    PokemonSpecies? pokemonSpecies,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (order != null) #order: order,
      if (name != null) #name: name,
      if (baseExperience != null) #baseExperience: baseExperience,
      if (weight != null) #weight: weight,
      if (height != null) #height: height,
      if (isDefault != null) #isDefault: isDefault,
      if (locationAreasUrl != null) #locationAreasUrl: locationAreasUrl,
      if (imageUrl != null) #imageUrl: imageUrl,
      if (pokemonTypes != null) #pokemonTypes: pokemonTypes,
      if (pokemonAbilities != null) #pokemonAbilities: pokemonAbilities,
      if (pokemonSpecies != null) #pokemonSpecies: pokemonSpecies,
    }),
  );
  @override
  PokemonDetail $make(CopyWithData data) => PokemonDetail(
    id: data.get(#id, or: $value.id),
    order: data.get(#order, or: $value.order),
    name: data.get(#name, or: $value.name),
    baseExperience: data.get(#baseExperience, or: $value.baseExperience),
    weight: data.get(#weight, or: $value.weight),
    height: data.get(#height, or: $value.height),
    isDefault: data.get(#isDefault, or: $value.isDefault),
    locationAreasUrl: data.get(#locationAreasUrl, or: $value.locationAreasUrl),
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
    pokemonTypes: data.get(#pokemonTypes, or: $value.pokemonTypes),
    pokemonAbilities: data.get(#pokemonAbilities, or: $value.pokemonAbilities),
    pokemonSpecies: data.get(#pokemonSpecies, or: $value.pokemonSpecies),
  );

  @override
  PokemonDetailCopyWith<$R2, PokemonDetail, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PokemonDetailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

