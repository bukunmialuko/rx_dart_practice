import 'package:flutter/foundation.dart' show immutable;
import 'package:rx_dart_learning/models/thing.dart';

@immutable
class Person extends Thing {
  final int age;

  const Person({required super.name, required this.age});

  @override
  String toString() => 'Person, name: $name, type: $age';

  Person.fromJson(Map<String, dynamic> json)
      : age = json["age"] as int,
        super(name: json["name"] as String);
}
