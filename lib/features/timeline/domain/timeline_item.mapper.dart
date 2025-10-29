// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'timeline_item.dart';

class TimelineItemTypeMapper extends EnumMapper<TimelineItemType> {
  TimelineItemTypeMapper._();

  static TimelineItemTypeMapper? _instance;
  static TimelineItemTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TimelineItemTypeMapper._());
    }
    return _instance!;
  }

  static TimelineItemType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TimelineItemType decode(dynamic value) {
    switch (value) {
      case r'note':
        return TimelineItemType.note;
      case r'audit':
        return TimelineItemType.audit;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TimelineItemType self) {
    switch (self) {
      case TimelineItemType.note:
        return r'note';
      case TimelineItemType.audit:
        return r'audit';
    }
  }
}

extension TimelineItemTypeMapperExtension on TimelineItemType {
  String toValue() {
    TimelineItemTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TimelineItemType>(this) as String;
  }
}

class TimelineItemMapper extends ClassMapperBase<TimelineItem> {
  TimelineItemMapper._();

  static TimelineItemMapper? _instance;
  static TimelineItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TimelineItemMapper._());
      TimelineItemTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TimelineItem';

  static String _$title(TimelineItem v) => v.title;
  static const Field<TimelineItem, String> _f$title = Field('title', _$title);
  static DateTime _$timestamp(TimelineItem v) => v.timestamp;
  static const Field<TimelineItem, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
  );
  static String _$message(TimelineItem v) => v.message;
  static const Field<TimelineItem, String> _f$message = Field(
    'message',
    _$message,
  );
  static TimelineItemType _$timelineItemType(TimelineItem v) =>
      v.timelineItemType;
  static const Field<TimelineItem, TimelineItemType> _f$timelineItemType =
      Field('timelineItemType', _$timelineItemType);

  @override
  final MappableFields<TimelineItem> fields = const {
    #title: _f$title,
    #timestamp: _f$timestamp,
    #message: _f$message,
    #timelineItemType: _f$timelineItemType,
  };

  static TimelineItem _instantiate(DecodingData data) {
    return TimelineItem(
      title: data.dec(_f$title),
      timestamp: data.dec(_f$timestamp),
      message: data.dec(_f$message),
      timelineItemType: data.dec(_f$timelineItemType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TimelineItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TimelineItem>(map);
  }

  static TimelineItem fromJson(String json) {
    return ensureInitialized().decodeJson<TimelineItem>(json);
  }
}

mixin TimelineItemMappable {
  String toJson() {
    return TimelineItemMapper.ensureInitialized().encodeJson<TimelineItem>(
      this as TimelineItem,
    );
  }

  Map<String, dynamic> toMap() {
    return TimelineItemMapper.ensureInitialized().encodeMap<TimelineItem>(
      this as TimelineItem,
    );
  }

  TimelineItemCopyWith<TimelineItem, TimelineItem, TimelineItem> get copyWith =>
      _TimelineItemCopyWithImpl<TimelineItem, TimelineItem>(
        this as TimelineItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TimelineItemMapper.ensureInitialized().stringifyValue(
      this as TimelineItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return TimelineItemMapper.ensureInitialized().equalsValue(
      this as TimelineItem,
      other,
    );
  }

  @override
  int get hashCode {
    return TimelineItemMapper.ensureInitialized().hashValue(
      this as TimelineItem,
    );
  }
}

extension TimelineItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TimelineItem, $Out> {
  TimelineItemCopyWith<$R, TimelineItem, $Out> get $asTimelineItem =>
      $base.as((v, t, t2) => _TimelineItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TimelineItemCopyWith<$R, $In extends TimelineItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? title,
    DateTime? timestamp,
    String? message,
    TimelineItemType? timelineItemType,
  });
  TimelineItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TimelineItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TimelineItem, $Out>
    implements TimelineItemCopyWith<$R, TimelineItem, $Out> {
  _TimelineItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TimelineItem> $mapper =
      TimelineItemMapper.ensureInitialized();
  @override
  $R call({
    String? title,
    DateTime? timestamp,
    String? message,
    TimelineItemType? timelineItemType,
  }) => $apply(
    FieldCopyWithData({
      if (title != null) #title: title,
      if (timestamp != null) #timestamp: timestamp,
      if (message != null) #message: message,
      if (timelineItemType != null) #timelineItemType: timelineItemType,
    }),
  );
  @override
  TimelineItem $make(CopyWithData data) => TimelineItem(
    title: data.get(#title, or: $value.title),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    message: data.get(#message, or: $value.message),
    timelineItemType: data.get(#timelineItemType, or: $value.timelineItemType),
  );

  @override
  TimelineItemCopyWith<$R2, TimelineItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TimelineItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

