// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(TimelineViewModel)
const timelineViewModelProvider = TimelineViewModelProvider._();

final class TimelineViewModelProvider
    extends $NotifierProvider<TimelineViewModel, TimelineState> {
  const TimelineViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'timelineViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$timelineViewModelHash();

  @$internal
  @override
  TimelineViewModel create() => TimelineViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TimelineState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TimelineState>(value),
    );
  }
}

String _$timelineViewModelHash() => r'3d6846a7684d0e48527653e66972165ac416e131';

abstract class _$TimelineViewModel extends $Notifier<TimelineState> {
  TimelineState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TimelineState, TimelineState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TimelineState, TimelineState>,
              TimelineState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
