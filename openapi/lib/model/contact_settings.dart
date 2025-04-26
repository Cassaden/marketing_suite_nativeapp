//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactSettings {
  /// Returns a new [ContactSettings] instance.
  ContactSettings({
    required this.id,
    this.optInStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.contact,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? optInStatus;

  DateTime createdAt;

  DateTime updatedAt;

  int contact;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactSettings &&
    other.id == id &&
    other.optInStatus == optInStatus &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.contact == contact;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (optInStatus == null ? 0 : optInStatus!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (contact.hashCode);

  @override
  String toString() => 'ContactSettings[id=$id, optInStatus=$optInStatus, createdAt=$createdAt, updatedAt=$updatedAt, contact=$contact]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.optInStatus != null) {
      json[r'opt_in_status'] = this.optInStatus;
    } else {
      json[r'opt_in_status'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
      json[r'contact'] = this.contact;
    return json;
  }

  /// Returns a new [ContactSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactSettings(
        id: mapValueOfType<int>(json, r'id')!,
        optInStatus: mapValueOfType<bool>(json, r'opt_in_status'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        contact: mapValueOfType<int>(json, r'contact')!,
      );
    }
    return null;
  }

  static List<ContactSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactSettings> mapFromJson(dynamic json) {
    final map = <String, ContactSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactSettings-objects as value to a dart map
  static Map<String, List<ContactSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'created_at',
    'updated_at',
    'contact',
  };
}

