// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokedex_search_screen_state.dart';

class PokedexSearchScreenStateMapper
    extends ClassMapperBase<PokedexSearchScreenState> {
  PokedexSearchScreenStateMapper._();

  static PokedexSearchScreenStateMapper? _instance;
  static PokedexSearchScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = PokedexSearchScreenStateMapper._(),
      );
      PokemonDetailMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PokedexSearchScreenState';

  static String _$searchQuery(PokedexSearchScreenState v) => v.searchQuery;
  static const Field<PokedexSearchScreenState, String> _f$searchQuery = Field(
    'searchQuery',
    _$searchQuery,
    opt: true,
    def: '',
  );
  static List<PokemonDetail> _$pokemonSearchResults(
    PokedexSearchScreenState v,
  ) => v.pokemonSearchResults;
  static const Field<PokedexSearchScreenState, List<PokemonDetail>>
  _f$pokemonSearchResults = Field(
    'pokemonSearchResults',
    _$pokemonSearchResults,
    opt: true,
    def: const [],
  );
  static ApiStatusEnum _$getPokemonSearchApiStatus(
    PokedexSearchScreenState v,
  ) => v.getPokemonSearchApiStatus;
  static const Field<PokedexSearchScreenState, ApiStatusEnum>
  _f$getPokemonSearchApiStatus = Field(
    'getPokemonSearchApiStatus',
    _$getPokemonSearchApiStatus,
    opt: true,
    def: ApiStatusEnum.notStarted,
  );

  @override
  final MappableFields<PokedexSearchScreenState> fields = const {
    #searchQuery: _f$searchQuery,
    #pokemonSearchResults: _f$pokemonSearchResults,
    #getPokemonSearchApiStatus: _f$getPokemonSearchApiStatus,
  };

  static PokedexSearchScreenState _instantiate(DecodingData data) {
    return PokedexSearchScreenState(
      searchQuery: data.dec(_f$searchQuery),
      pokemonSearchResults: data.dec(_f$pokemonSearchResults),
      getPokemonSearchApiStatus: data.dec(_f$getPokemonSearchApiStatus),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokedexSearchScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokedexSearchScreenState>(map);
  }

  static PokedexSearchScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<PokedexSearchScreenState>(json);
  }
}

mixin PokedexSearchScreenStateMappable {
  String toJson() {
    return PokedexSearchScreenStateMapper.ensureInitialized()
        .encodeJson<PokedexSearchScreenState>(this as PokedexSearchScreenState);
  }

  Map<String, dynamic> toMap() {
    return PokedexSearchScreenStateMapper.ensureInitialized()
        .encodeMap<PokedexSearchScreenState>(this as PokedexSearchScreenState);
  }

  PokedexSearchScreenStateCopyWith<
    PokedexSearchScreenState,
    PokedexSearchScreenState,
    PokedexSearchScreenState
  >
  get copyWith =>
      _PokedexSearchScreenStateCopyWithImpl<
        PokedexSearchScreenState,
        PokedexSearchScreenState
      >(this as PokedexSearchScreenState, $identity, $identity);
  @override
  String toString() {
    return PokedexSearchScreenStateMapper.ensureInitialized().stringifyValue(
      this as PokedexSearchScreenState,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokedexSearchScreenStateMapper.ensureInitialized().equalsValue(
      this as PokedexSearchScreenState,
      other,
    );
  }

  @override
  int get hashCode {
    return PokedexSearchScreenStateMapper.ensureInitialized().hashValue(
      this as PokedexSearchScreenState,
    );
  }
}

extension PokedexSearchScreenStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokedexSearchScreenState, $Out> {
  PokedexSearchScreenStateCopyWith<$R, PokedexSearchScreenState, $Out>
  get $asPokedexSearchScreenState => $base.as(
    (v, t, t2) => _PokedexSearchScreenStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PokedexSearchScreenStateCopyWith<
  $R,
  $In extends PokedexSearchScreenState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    PokemonDetail,
    PokemonDetailCopyWith<$R, PokemonDetail, PokemonDetail>
  >
  get pokemonSearchResults;
  $R call({
    String? searchQuery,
    List<PokemonDetail>? pokemonSearchResults,
    ApiStatusEnum? getPokemonSearchApiStatus,
  });
  PokedexSearchScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokedexSearchScreenStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokedexSearchScreenState, $Out>
    implements
        PokedexSearchScreenStateCopyWith<$R, PokedexSearchScreenState, $Out> {
  _PokedexSearchScreenStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokedexSearchScreenState> $mapper =
      PokedexSearchScreenStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    PokemonDetail,
    PokemonDetailCopyWith<$R, PokemonDetail, PokemonDetail>
  >
  get pokemonSearchResults => ListCopyWith(
    $value.pokemonSearchResults,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(pokemonSearchResults: v),
  );
  @override
  $R call({
    String? searchQuery,
    List<PokemonDetail>? pokemonSearchResults,
    ApiStatusEnum? getPokemonSearchApiStatus,
  }) => $apply(
    FieldCopyWithData({
      if (searchQuery != null) #searchQuery: searchQuery,
      if (pokemonSearchResults != null)
        #pokemonSearchResults: pokemonSearchResults,
      if (getPokemonSearchApiStatus != null)
        #getPokemonSearchApiStatus: getPokemonSearchApiStatus,
    }),
  );
  @override
  PokedexSearchScreenState $make(CopyWithData data) => PokedexSearchScreenState(
    searchQuery: data.get(#searchQuery, or: $value.searchQuery),
    pokemonSearchResults: data.get(
      #pokemonSearchResults,
      or: $value.pokemonSearchResults,
    ),
    getPokemonSearchApiStatus: data.get(
      #getPokemonSearchApiStatus,
      or: $value.getPokemonSearchApiStatus,
    ),
  );

  @override
  PokedexSearchScreenStateCopyWith<$R2, PokedexSearchScreenState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokedexSearchScreenStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

