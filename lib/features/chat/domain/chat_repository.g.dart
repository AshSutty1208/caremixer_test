// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChatRepository)
const chatRepositoryProvider = ChatRepositoryProvider._();

final class ChatRepositoryProvider
    extends $NotifierProvider<ChatRepository, ChatRepository> {
  const ChatRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatRepositoryHash();

  @$internal
  @override
  ChatRepository create() => ChatRepository();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatRepository>(value),
    );
  }
}

String _$chatRepositoryHash() => r'b646547acc1f1c5840a897e7c500c4f74623f819';

abstract class _$ChatRepository extends $Notifier<ChatRepository> {
  ChatRepository build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ChatRepository, ChatRepository>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChatRepository, ChatRepository>,
              ChatRepository,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
