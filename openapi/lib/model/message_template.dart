//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessageTemplate {
  /// Returns a new [MessageTemplate] instance.
  MessageTemplate({
    required this.id,
    required this.title,
    required this.body,
    required this.variableMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;

  String title;

  String body;

  Object? variableMetadata;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageTemplate &&
    other.id == id &&
    other.title == title &&
    other.body == body &&
    other.variableMetadata == variableMetadata &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (body.hashCode) +
    (variableMetadata == null ? 0 : variableMetadata!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'MessageTemplate[id=$id, title=$title, body=$body, variableMetadata=$variableMetadata, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'body'] = this.body;
    if (this.variableMetadata != null) {
      json[r'variable_metadata'] = this.variableMetadata;
    } else {
      json[r'variable_metadata'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [MessageTemplate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageTemplate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageTemplate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageTemplate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageTemplate(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        body: mapValueOfType<String>(json, r'body')!,
        variableMetadata: mapValueOfType<Object>(json, r'variable_metadata'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<MessageTemplate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageTemplate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageTemplate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageTemplate> mapFromJson(dynamic json) {
    final map = <String, MessageTemplate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageTemplate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageTemplate-objects as value to a dart map
  static Map<String, List<MessageTemplate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageTemplate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessageTemplate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'body',
    'variable_metadata',
    'created_at',
    'updated_at',
  };
}

