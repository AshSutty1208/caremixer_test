// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokedex_list_screen_state.dart';

class PokedexListScreenStateMapper
    extends ClassMapperBase<PokedexListScreenState> {
  PokedexListScreenStateMapper._();

  static PokedexListScreenStateMapper? _instance;
  static PokedexListScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokedexListScreenStateMapper._());
      PokemonDetailMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PokedexListScreenState';

  static List<PokemonDetail> _$pokemon(PokedexListScreenState v) => v.pokemon;
  static const Field<PokedexListScreenState, List<PokemonDetail>> _f$pokemon =
      Field('pokemon', _$pokemon, opt: true, def: const []);
  static ApiStatusEnum _$getPokemonApiStatus(PokedexListScreenState v) =>
      v.getPokemonApiStatus;
  static const Field<PokedexListScreenState, ApiStatusEnum>
  _f$getPokemonApiStatus = Field(
    'getPokemonApiStatus',
    _$getPokemonApiStatus,
    opt: true,
    def: ApiStatusEnum.notStarted,
  );
  static int _$currentPage(PokedexListScreenState v) => v.currentPage;
  static const Field<PokedexListScreenState, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
    opt: true,
    def: 1,
  );

  @override
  final MappableFields<PokedexListScreenState> fields = const {
    #pokemon: _f$pokemon,
    #getPokemonApiStatus: _f$getPokemonApiStatus,
    #currentPage: _f$currentPage,
  };

  static PokedexListScreenState _instantiate(DecodingData data) {
    return PokedexListScreenState(
      pokemon: data.dec(_f$pokemon),
      getPokemonApiStatus: data.dec(_f$getPokemonApiStatus),
      currentPage: data.dec(_f$currentPage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokedexListScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokedexListScreenState>(map);
  }

  static PokedexListScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<PokedexListScreenState>(json);
  }
}

mixin PokedexListScreenStateMappable {
  String toJson() {
    return PokedexListScreenStateMapper.ensureInitialized()
        .encodeJson<PokedexListScreenState>(this as PokedexListScreenState);
  }

  Map<String, dynamic> toMap() {
    return PokedexListScreenStateMapper.ensureInitialized()
        .encodeMap<PokedexListScreenState>(this as PokedexListScreenState);
  }

  PokedexListScreenStateCopyWith<
    PokedexListScreenState,
    PokedexListScreenState,
    PokedexListScreenState
  >
  get copyWith =>
      _PokedexListScreenStateCopyWithImpl<
        PokedexListScreenState,
        PokedexListScreenState
      >(this as PokedexListScreenState, $identity, $identity);
  @override
  String toString() {
    return PokedexListScreenStateMapper.ensureInitialized().stringifyValue(
      this as PokedexListScreenState,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokedexListScreenStateMapper.ensureInitialized().equalsValue(
      this as PokedexListScreenState,
      other,
    );
  }

  @override
  int get hashCode {
    return PokedexListScreenStateMapper.ensureInitialized().hashValue(
      this as PokedexListScreenState,
    );
  }
}

extension PokedexListScreenStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokedexListScreenState, $Out> {
  PokedexListScreenStateCopyWith<$R, PokedexListScreenState, $Out>
  get $asPokedexListScreenState => $base.as(
    (v, t, t2) => _PokedexListScreenStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PokedexListScreenStateCopyWith<
  $R,
  $In extends PokedexListScreenState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    PokemonDetail,
    PokemonDetailCopyWith<$R, PokemonDetail, PokemonDetail>
  >
  get pokemon;
  $R call({
    List<PokemonDetail>? pokemon,
    ApiStatusEnum? getPokemonApiStatus,
    int? currentPage,
  });
  PokedexListScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PokedexListScreenStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokedexListScreenState, $Out>
    implements
        PokedexListScreenStateCopyWith<$R, PokedexListScreenState, $Out> {
  _PokedexListScreenStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokedexListScreenState> $mapper =
      PokedexListScreenStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    PokemonDetail,
    PokemonDetailCopyWith<$R, PokemonDetail, PokemonDetail>
  >
  get pokemon => ListCopyWith(
    $value.pokemon,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(pokemon: v),
  );
  @override
  $R call({
    List<PokemonDetail>? pokemon,
    ApiStatusEnum? getPokemonApiStatus,
    int? currentPage,
  }) => $apply(
    FieldCopyWithData({
      if (pokemon != null) #pokemon: pokemon,
      if (getPokemonApiStatus != null)
        #getPokemonApiStatus: getPokemonApiStatus,
      if (currentPage != null) #currentPage: currentPage,
    }),
  );
  @override
  PokedexListScreenState $make(CopyWithData data) => PokedexListScreenState(
    pokemon: data.get(#pokemon, or: $value.pokemon),
    getPokemonApiStatus: data.get(
      #getPokemonApiStatus,
      or: $value.getPokemonApiStatus,
    ),
    currentPage: data.get(#currentPage, or: $value.currentPage),
  );

  @override
  PokedexListScreenStateCopyWith<$R2, PokedexListScreenState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PokedexListScreenStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

