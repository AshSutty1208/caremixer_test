// ignore_for_file: constant_identifier_names

import 'package:dart_mappable/dart_mappable.dart';

part 'chat_message.mapper.dart';

@MappableEnum()
enum ChatMessageType { sent, received }

@MappableClass()
class ChatMessage with ChatMessageMappable {
  const ChatMessage({
    required this.message,
    required this.timestamp,
    required this.chatMessageType,
  });

  final String message;
  final DateTime timestamp;
  final ChatMessageType chatMessageType;

  static const fromMap = ChatMessageMapper.fromMap;
  static const fromJson = ChatMessageMapper.fromJson;
}
