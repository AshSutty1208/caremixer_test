// ignore_for_file: constant_identifier_names

import 'package:dart_mappable/dart_mappable.dart';

part 'timeline_item.mapper.dart';

@MappableEnum()
enum TimelineItemType { note, audit }

@MappableClass()
class TimelineItem with TimelineItemMappable {
  const TimelineItem({
    required this.title,
    required this.timestamp,
    required this.message,
    required this.timelineItemType,
  });

  final String title;
  final DateTime timestamp;
  final String message;
  final TimelineItemType timelineItemType;

  static const fromMap = TimelineItemMapper.fromMap;
  static const fromJson = TimelineItemMapper.fromJson;
}
