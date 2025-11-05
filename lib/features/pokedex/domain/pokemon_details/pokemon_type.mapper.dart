// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pokemon_type.dart';

class PokemonTypeMapper extends ClassMapperBase<PokemonType> {
  PokemonTypeMapper._();

  static PokemonTypeMapper? _instance;
  static PokemonTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PokemonTypeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PokemonType';

  static String _$url(PokemonType v) => v.url;
  static const Field<PokemonType, String> _f$url = Field('url', _$url);
  static String _$name(PokemonType v) => v.name;
  static const Field<PokemonType, String> _f$name = Field('name', _$name);
  static Color _$color(PokemonType v) => v.color;
  static const Field<PokemonType, Color> _f$color = Field('color', _$color);
  static String _$backgroundImage(PokemonType v) => v.backgroundImage;
  static const Field<PokemonType, String> _f$backgroundImage = Field(
    'backgroundImage',
    _$backgroundImage,
  );

  @override
  final MappableFields<PokemonType> fields = const {
    #url: _f$url,
    #name: _f$name,
    #color: _f$color,
    #backgroundImage: _f$backgroundImage,
  };

  static PokemonType _instantiate(DecodingData data) {
    return PokemonType(
      url: data.dec(_f$url),
      name: data.dec(_f$name),
      color: data.dec(_f$color),
      backgroundImage: data.dec(_f$backgroundImage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PokemonType fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PokemonType>(map);
  }

  static PokemonType fromJson(String json) {
    return ensureInitialized().decodeJson<PokemonType>(json);
  }
}

mixin PokemonTypeMappable {
  String toJson() {
    return PokemonTypeMapper.ensureInitialized().encodeJson<PokemonType>(
      this as PokemonType,
    );
  }

  Map<String, dynamic> toMap() {
    return PokemonTypeMapper.ensureInitialized().encodeMap<PokemonType>(
      this as PokemonType,
    );
  }

  PokemonTypeCopyWith<PokemonType, PokemonType, PokemonType> get copyWith =>
      _PokemonTypeCopyWithImpl<PokemonType, PokemonType>(
        this as PokemonType,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PokemonTypeMapper.ensureInitialized().stringifyValue(
      this as PokemonType,
    );
  }

  @override
  bool operator ==(Object other) {
    return PokemonTypeMapper.ensureInitialized().equalsValue(
      this as PokemonType,
      other,
    );
  }

  @override
  int get hashCode {
    return PokemonTypeMapper.ensureInitialized().hashValue(this as PokemonType);
  }
}

extension PokemonTypeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PokemonType, $Out> {
  PokemonTypeCopyWith<$R, PokemonType, $Out> get $asPokemonType =>
      $base.as((v, t, t2) => _PokemonTypeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PokemonTypeCopyWith<$R, $In extends PokemonType, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, String? name, Color? color, String? backgroundImage});
  PokemonTypeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PokemonTypeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PokemonType, $Out>
    implements PokemonTypeCopyWith<$R, PokemonType, $Out> {
  _PokemonTypeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PokemonType> $mapper =
      PokemonTypeMapper.ensureInitialized();
  @override
  $R call({String? url, String? name, Color? color, String? backgroundImage}) =>
      $apply(
        FieldCopyWithData({
          if (url != null) #url: url,
          if (name != null) #name: name,
          if (color != null) #color: color,
          if (backgroundImage != null) #backgroundImage: backgroundImage,
        }),
      );
  @override
  PokemonType $make(CopyWithData data) => PokemonType(
    url: data.get(#url, or: $value.url),
    name: data.get(#name, or: $value.name),
    color: data.get(#color, or: $value.color),
    backgroundImage: data.get(#backgroundImage, or: $value.backgroundImage),
  );

  @override
  PokemonTypeCopyWith<$R2, PokemonType, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PokemonTypeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

