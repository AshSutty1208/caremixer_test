// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'timeline_screen_state.dart';

class TimelineStateMapper extends ClassMapperBase<TimelineState> {
  TimelineStateMapper._();

  static TimelineStateMapper? _instance;
  static TimelineStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TimelineStateMapper._());
      TimelineItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TimelineState';

  static List<TimelineItem> _$timelineItems(TimelineState v) => v.timelineItems;
  static const Field<TimelineState, List<TimelineItem>> _f$timelineItems =
      Field('timelineItems', _$timelineItems, opt: true, def: const []);

  @override
  final MappableFields<TimelineState> fields = const {
    #timelineItems: _f$timelineItems,
  };

  static TimelineState _instantiate(DecodingData data) {
    return TimelineState(timelineItems: data.dec(_f$timelineItems));
  }

  @override
  final Function instantiate = _instantiate;

  static TimelineState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TimelineState>(map);
  }

  static TimelineState fromJson(String json) {
    return ensureInitialized().decodeJson<TimelineState>(json);
  }
}

mixin TimelineStateMappable {
  String toJson() {
    return TimelineStateMapper.ensureInitialized().encodeJson<TimelineState>(
      this as TimelineState,
    );
  }

  Map<String, dynamic> toMap() {
    return TimelineStateMapper.ensureInitialized().encodeMap<TimelineState>(
      this as TimelineState,
    );
  }

  TimelineStateCopyWith<TimelineState, TimelineState, TimelineState>
  get copyWith => _TimelineStateCopyWithImpl<TimelineState, TimelineState>(
    this as TimelineState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return TimelineStateMapper.ensureInitialized().stringifyValue(
      this as TimelineState,
    );
  }

  @override
  bool operator ==(Object other) {
    return TimelineStateMapper.ensureInitialized().equalsValue(
      this as TimelineState,
      other,
    );
  }

  @override
  int get hashCode {
    return TimelineStateMapper.ensureInitialized().hashValue(
      this as TimelineState,
    );
  }
}

extension TimelineStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TimelineState, $Out> {
  TimelineStateCopyWith<$R, TimelineState, $Out> get $asTimelineState =>
      $base.as((v, t, t2) => _TimelineStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TimelineStateCopyWith<$R, $In extends TimelineState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    TimelineItem,
    TimelineItemCopyWith<$R, TimelineItem, TimelineItem>
  >
  get timelineItems;
  $R call({List<TimelineItem>? timelineItems});
  TimelineStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TimelineStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TimelineState, $Out>
    implements TimelineStateCopyWith<$R, TimelineState, $Out> {
  _TimelineStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TimelineState> $mapper =
      TimelineStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    TimelineItem,
    TimelineItemCopyWith<$R, TimelineItem, TimelineItem>
  >
  get timelineItems => ListCopyWith(
    $value.timelineItems,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(timelineItems: v),
  );
  @override
  $R call({List<TimelineItem>? timelineItems}) => $apply(
    FieldCopyWithData({
      if (timelineItems != null) #timelineItems: timelineItems,
    }),
  );
  @override
  TimelineState $make(CopyWithData data) => TimelineState(
    timelineItems: data.get(#timelineItems, or: $value.timelineItems),
  );

  @override
  TimelineStateCopyWith<$R2, TimelineState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TimelineStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

