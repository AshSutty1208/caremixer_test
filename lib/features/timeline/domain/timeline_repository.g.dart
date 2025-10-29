// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(TimelineRepository)
const timelineRepositoryProvider = TimelineRepositoryProvider._();

final class TimelineRepositoryProvider
    extends $NotifierProvider<TimelineRepository, TimelineRepository> {
  const TimelineRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'timelineRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$timelineRepositoryHash();

  @$internal
  @override
  TimelineRepository create() => TimelineRepository();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TimelineRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TimelineRepository>(value),
    );
  }
}

String _$timelineRepositoryHash() =>
    r'7b70357c35b8b740edeef3899228220d1cf62c14';

abstract class _$TimelineRepository extends $Notifier<TimelineRepository> {
  TimelineRepository build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TimelineRepository, TimelineRepository>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TimelineRepository, TimelineRepository>,
              TimelineRepository,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
