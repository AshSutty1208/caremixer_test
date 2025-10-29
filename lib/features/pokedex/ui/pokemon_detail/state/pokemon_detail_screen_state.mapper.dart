// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_detail_screen_state.dart';

class PokemonDetailScreenStateMapper
    extends ClassMapperBase<PokemonDetailScreenState> {
  PokemonDetailScreenStateMapper._();

  static PokemonDetailScreenStateMapper? _instance;
  static PokemonDetailScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = PokemonDetailScreenStateMapper._(),
      );
      PokemonSpeciesDetailMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonDetailScreenState';

  static ApiStatusEnum _$getPokemonSpeciesApiStatus(
    PokemonDetailScreenState v,
  ) => v.getPokemonSpeciesApiStatus;
  static const Field<PokemonDetailScreenState, ApiStatusEnum>
  _f$getPokemonSpeciesApiStatus = Field(
    'getPokemonSpeciesApiStatus',
    _$getPokemonSpeciesApiStatus,
    opt: true,
    def: ApiStatusEnum.notStarted,
  );
  static PokemonSpeciesDetail? _$pokemonSpeciesDetail(
    PokemonDetailScreenState v,
  ) => v.pokemonSpeciesDetail;
  static const Field<PokemonDetailScreenState, PokemonSpeciesDetail>
  _f$pokemonSpeciesDetail = Field(
    'pokemonSpeciesDetail',
    _$pokemonSpeciesDetail,
    opt: true,
  );

  @override
  final MappableFields<PokemonDetailScreenState> fields = const {
    #getPokemonSpeciesApiStatus: _f$getPokemonSpeciesApiStatus,
    #pokemonSpeciesDetail: _f$pokemonSpeciesDetail,
  };

  static PokemonDetailScreenState _instantiate(DecodingData data) {
    return PokemonDetailScreenState(
      getPokemonSpeciesApiStatus: data.dec(_f$getPokemonSpeciesApiStatus),
      pokemonSpeciesDetail: data.dec(_f$pokemonSpeciesDetail),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonDetailScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonDetailScreenState>(map);
  }

  static PokemonDetailScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonDetailScreenState>(json);
  }
}

mixin PokemonDetailScreenStateMappable {
  String toJson() {
    return PokemonDetailScreenStateMapper.ensureInitialized()
        .encodeJson<PokemonDetailScreenState>(this as PokemonDetailScreenState);
  }

  Map<String, dynamic> toMap() {
    return PokemonDetailScreenStateMapper.ensureInitialized()
        .encodeMap<PokemonDetailScreenState>(this as PokemonDetailScreenState);
  }

  PokemonDetailScreenStateCopyWith<
    PokemonDetailScreenState,
    PokemonDetailScreenState,
    PokemonDetailScreenState
  >
  get copyWith =>
      _PokemonDetailScreenStateCopyWithImpl<
        PokemonDetailScreenState,
        PokemonDetailScreenState
      >(this as PokemonDetailScreenState, $identity, $identity);
  @override
  String toString() {
    return PokemonDetailScreenStateMapper.ensureInitialized().stringifyValue(
      this as PokemonDetailScreenState,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonDetailScreenStateMapper.ensureInitialized().equalsValue(
      this as PokemonDetailScreenState,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonDetailScreenStateMapper.ensureInitialized().hashValue(
      this as PokemonDetailScreenState,
    );
  }
}

extension PokemonDetailScreenStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonDetailScreenState, $Out> {
  PokemonDetailScreenStateCopyWith<$R, PokemonDetailScreenState, $Out>
  get $asPokemonDetailScreenState => $base.as(
    (v, t, t2) => _PokemonDetailScreenStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PokemonDetailScreenStateCopyWith<
  $R,
  $In extends PokemonDetailScreenState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  PokemonSpeciesDetailCopyWith<$R, PokemonSpeciesDetail, PokemonSpeciesDetail>?
  get pokemonSpeciesDetail;
  $R call({
    ApiStatusEnum? getPokemonSpeciesApiStatus,
    PokemonSpeciesDetail? pokemonSpeciesDetail,
  });
  PokemonDetailScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokemonDetailScreenStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonDetailScreenState, $Out>
    implements
        PokemonDetailScreenStateCopyWith<$R, PokemonDetailScreenState, $Out> {
  _PokemonDetailScreenStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonDetailScreenState> $mapper =
      PokemonDetailScreenStateMapper.ensureInitialized();
  @override
  PokemonSpeciesDetailCopyWith<$R, PokemonSpeciesDetail, PokemonSpeciesDetail>?
  get pokemonSpeciesDetail => $value.pokemonSpeciesDetail?.copyWith.$chain(
    (v) => call(pokemonSpeciesDetail: v),
  );
  @override
  $R call({
    ApiStatusEnum? getPokemonSpeciesApiStatus,
    Object? pokemonSpeciesDetail = $none,
  }) => $apply(
    FieldCopyWithData({
      if (getPokemonSpeciesApiStatus != null)
        #getPokemonSpeciesApiStatus: getPokemonSpeciesApiStatus,
      if (pokemonSpeciesDetail != $none)
        #pokemonSpeciesDetail: pokemonSpeciesDetail,
    }),
  );
  @override
  PokemonDetailScreenState $make(CopyWithData data) => PokemonDetailScreenState(
    getPokemonSpeciesApiStatus: data.get(
      #getPokemonSpeciesApiStatus,
      or: $value.getPokemonSpeciesApiStatus,
    ),
    pokemonSpeciesDetail: data.get(
      #pokemonSpeciesDetail,
      or: $value.pokemonSpeciesDetail,
    ),
  );

  @override
  PokemonDetailScreenStateCopyWith<$R2, PokemonDetailScreenState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokemonDetailScreenStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

