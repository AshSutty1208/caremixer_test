// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chat_list_screen_state.dart';

class ChatListScreenStateMapper extends ClassMapperBase<ChatListScreenState> {
  ChatListScreenStateMapper._();

  static ChatListScreenStateMapper? _instance;
  static ChatListScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatListScreenStateMapper._());
      ChatMessageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatListScreenState';

  static List<ChatMessage> _$chatMessages(ChatListScreenState v) =>
      v.chatMessages;
  static const Field<ChatListScreenState, List<ChatMessage>> _f$chatMessages =
      Field('chatMessages', _$chatMessages, opt: true, def: const []);
  static bool _$isBotResponding(ChatListScreenState v) => v.isBotResponding;
  static const Field<ChatListScreenState, bool> _f$isBotResponding = Field(
    'isBotResponding',
    _$isBotResponding,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<ChatListScreenState> fields = const {
    #chatMessages: _f$chatMessages,
    #isBotResponding: _f$isBotResponding,
  };

  static ChatListScreenState _instantiate(DecodingData data) {
    return ChatListScreenState(
      chatMessages: data.dec(_f$chatMessages),
      isBotResponding: data.dec(_f$isBotResponding),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatListScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatListScreenState>(map);
  }

  static ChatListScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<ChatListScreenState>(json);
  }
}

mixin ChatListScreenStateMappable {
  String toJson() {
    return ChatListScreenStateMapper.ensureInitialized()
        .encodeJson<ChatListScreenState>(this as ChatListScreenState);
  }

  Map<String, dynamic> toMap() {
    return ChatListScreenStateMapper.ensureInitialized()
        .encodeMap<ChatListScreenState>(this as ChatListScreenState);
  }

  ChatListScreenStateCopyWith<
    ChatListScreenState,
    ChatListScreenState,
    ChatListScreenState
  >
  get copyWith =>
      _ChatListScreenStateCopyWithImpl<
        ChatListScreenState,
        ChatListScreenState
      >(this as ChatListScreenState, $identity, $identity);
  @override
  String toString() {
    return ChatListScreenStateMapper.ensureInitialized().stringifyValue(
      this as ChatListScreenState,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatListScreenStateMapper.ensureInitialized().equalsValue(
      this as ChatListScreenState,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatListScreenStateMapper.ensureInitialized().hashValue(
      this as ChatListScreenState,
    );
  }
}

extension ChatListScreenStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatListScreenState, $Out> {
  ChatListScreenStateCopyWith<$R, ChatListScreenState, $Out>
  get $asChatListScreenState => $base.as(
    (v, t, t2) => _ChatListScreenStateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatListScreenStateCopyWith<
  $R,
  $In extends ChatListScreenState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ChatMessage,
    ChatMessageCopyWith<$R, ChatMessage, ChatMessage>
  >
  get chatMessages;
  $R call({List<ChatMessage>? chatMessages, bool? isBotResponding});
  ChatListScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatListScreenStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatListScreenState, $Out>
    implements ChatListScreenStateCopyWith<$R, ChatListScreenState, $Out> {
  _ChatListScreenStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatListScreenState> $mapper =
      ChatListScreenStateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ChatMessage,
    ChatMessageCopyWith<$R, ChatMessage, ChatMessage>
  >
  get chatMessages => ListCopyWith(
    $value.chatMessages,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(chatMessages: v),
  );
  @override
  $R call({List<ChatMessage>? chatMessages, bool? isBotResponding}) => $apply(
    FieldCopyWithData({
      if (chatMessages != null) #chatMessages: chatMessages,
      if (isBotResponding != null) #isBotResponding: isBotResponding,
    }),
  );
  @override
  ChatListScreenState $make(CopyWithData data) => ChatListScreenState(
    chatMessages: data.get(#chatMessages, or: $value.chatMessages),
    isBotResponding: data.get(#isBotResponding, or: $value.isBotResponding),
  );

  @override
  ChatListScreenStateCopyWith<$R2, ChatListScreenState, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatListScreenStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

