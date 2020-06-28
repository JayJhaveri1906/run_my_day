import 'package:meta/meta.dart';
import 'package:run_my_lockdown/models/entities/activity_entity/activity_entity.dart';

@immutable
class ActivityModel {
  final DateTime startTime;
  final DateTime endTime;
  final String iconName;
  final String eventName;
  final String description;
  final List<String> eventActions;
  final String eventID;
  final Duration duration;

  ActivityModel(
      {this.startTime,
      this.endTime,
      this.iconName,
      this.eventName,
      this.description,
      this.eventActions,
      this.eventID,
      this.duration});

  ActivityModel copyWith(
      {DateTime startTime,
      DateTime endTime,
      String iconName,
      String eventName,
      String description,
      List<String> eventActions,
      String eventID,
      Duration duration}) {
    return ActivityModel(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        iconName: iconName ?? this.iconName,
        eventName: eventName ?? this.eventName,
        description: description ?? this.description,
        eventActions: eventActions ?? this.eventActions,
        eventID: eventID ?? this.eventID,
        duration: duration ?? this.duration);
  }

  @override
  int get hashCode =>
      startTime.hashCode ^
      endTime.hashCode ^
      iconName.hashCode ^
      eventName.hashCode ^
      description.hashCode ^
      eventActions.hashCode ^
      eventID.hashCode ^
      duration.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityModel &&
          runtimeType == other.runtimeType &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          iconName == other.iconName &&
          eventName == other.eventName &&
          description == other.description &&
          eventActions == other.eventActions &&
          eventID == other.eventID &&
          duration == other.duration;

  @override
  String toString() {
    return 'ActivityModel { startTime: $startTime , endTime: $endTime , iconName: $iconName , eventName: $eventName , description: $description , eventActions: $eventActions , eventID: $eventID , duration: $duration }';
  }

  ActivityEntity toEntity() {
    return ActivityEntity(startTime, endTime, iconName, eventName, description,
        eventActions, eventID, duration);
  }

  static ActivityModel fromEntity(ActivityEntity entity) {
    return ActivityModel(
        startTime: entity.startTime,
        eventName: entity.eventName,
        endTime: entity.endTime,
        iconName: entity.iconName,
        description: entity.description,
        eventActions: entity.eventActions,
        eventID: entity.eventID,
        duration: entity.duration);
  }
}
