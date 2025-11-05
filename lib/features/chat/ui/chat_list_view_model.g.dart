// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChatListViewModel)
const chatListViewModelProvider = ChatListViewModelProvider._();

final class ChatListViewModelProvider
    extends $NotifierProvider<ChatListViewModel, ChatListScreenState> {
  const ChatListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatListViewModelHash();

  @$internal
  @override
  ChatListViewModel create() => ChatListViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatListScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatListScreenState>(value),
    );
  }
}

String _$chatListViewModelHash() => r'0c6866b1754342b0d29921ef8b5b188e2b9f5952';

abstract class _$ChatListViewModel extends $Notifier<ChatListScreenState> {
  ChatListScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ChatListScreenState, ChatListScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChatListScreenState, ChatListScreenState>,
              ChatListScreenState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
