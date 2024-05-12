import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter extends JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp json) => json.toDate().toLocal();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object.toUtc());
}
