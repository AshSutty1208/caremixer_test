// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AppThemeState)
const appThemeStateProvider = AppThemeStateProvider._();

final class AppThemeStateProvider
    extends $NotifierProvider<AppThemeState, AppTheme> {
  const AppThemeStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeStateHash();

  @$internal
  @override
  AppThemeState create() => AppThemeState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppTheme>(value),
    );
  }
}

String _$appThemeStateHash() => r'793816a8f372da3ee059688d99d50b52b5147180';

abstract class _$AppThemeState extends $Notifier<AppTheme> {
  AppTheme build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppTheme, AppTheme>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppTheme, AppTheme>,
              AppTheme,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
