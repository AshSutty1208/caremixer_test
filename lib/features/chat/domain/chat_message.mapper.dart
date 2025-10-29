// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chat_message.dart';

class ChatMessageTypeMapper extends EnumMapper<ChatMessageType> {
  ChatMessageTypeMapper._();

  static ChatMessageTypeMapper? _instance;
  static ChatMessageTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatMessageTypeMapper._());
    }
    return _instance!;
  }

  static ChatMessageType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ChatMessageType decode(dynamic value) {
    switch (value) {
      case r'sent':
        return ChatMessageType.sent;
      case r'received':
        return ChatMessageType.received;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ChatMessageType self) {
    switch (self) {
      case ChatMessageType.sent:
        return r'sent';
      case ChatMessageType.received:
        return r'received';
    }
  }
}

extension ChatMessageTypeMapperExtension on ChatMessageType {
  String toValue() {
    ChatMessageTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ChatMessageType>(this) as String;
  }
}

class ChatMessageMapper extends ClassMapperBase<ChatMessage> {
  ChatMessageMapper._();

  static ChatMessageMapper? _instance;
  static ChatMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatMessageMapper._());
      ChatMessageTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatMessage';

  static String _$message(ChatMessage v) => v.message;
  static const Field<ChatMessage, String> _f$message = Field(
    'message',
    _$message,
  );
  static DateTime _$timestamp(ChatMessage v) => v.timestamp;
  static const Field<ChatMessage, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
  );
  static ChatMessageType _$chatMessageType(ChatMessage v) => v.chatMessageType;
  static const Field<ChatMessage, ChatMessageType> _f$chatMessageType = Field(
    'chatMessageType',
    _$chatMessageType,
  );

  @override
  final MappableFields<ChatMessage> fields = const {
    #message: _f$message,
    #timestamp: _f$timestamp,
    #chatMessageType: _f$chatMessageType,
  };

  static ChatMessage _instantiate(DecodingData data) {
    return ChatMessage(
      message: data.dec(_f$message),
      timestamp: data.dec(_f$timestamp),
      chatMessageType: data.dec(_f$chatMessageType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatMessage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatMessage>(map);
  }

  static ChatMessage fromJson(String json) {
    return ensureInitialized().decodeJson<ChatMessage>(json);
  }
}

mixin ChatMessageMappable {
  String toJson() {
    return ChatMessageMapper.ensureInitialized().encodeJson<ChatMessage>(
      this as ChatMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return ChatMessageMapper.ensureInitialized().encodeMap<ChatMessage>(
      this as ChatMessage,
    );
  }

  ChatMessageCopyWith<ChatMessage, ChatMessage, ChatMessage> get copyWith =>
      _ChatMessageCopyWithImpl<ChatMessage, ChatMessage>(
        this as ChatMessage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatMessageMapper.ensureInitialized().stringifyValue(
      this as ChatMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatMessageMapper.ensureInitialized().equalsValue(
      this as ChatMessage,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatMessageMapper.ensureInitialized().hashValue(this as ChatMessage);
  }
}

extension ChatMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatMessage, $Out> {
  ChatMessageCopyWith<$R, ChatMessage, $Out> get $asChatMessage =>
      $base.as((v, t, t2) => _ChatMessageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatMessageCopyWith<$R, $In extends ChatMessage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? message,
    DateTime? timestamp,
    ChatMessageType? chatMessageType,
  });
  ChatMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChatMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatMessage, $Out>
    implements ChatMessageCopyWith<$R, ChatMessage, $Out> {
  _ChatMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatMessage> $mapper =
      ChatMessageMapper.ensureInitialized();
  @override
  $R call({
    String? message,
    DateTime? timestamp,
    ChatMessageType? chatMessageType,
  }) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (timestamp != null) #timestamp: timestamp,
      if (chatMessageType != null) #chatMessageType: chatMessageType,
    }),
  );
  @override
  ChatMessage $make(CopyWithData data) => ChatMessage(
    message: data.get(#message, or: $value.message),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    chatMessageType: data.get(#chatMessageType, or: $value.chatMessageType),
  );

  @override
  ChatMessageCopyWith<$R2, ChatMessage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatMessageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

