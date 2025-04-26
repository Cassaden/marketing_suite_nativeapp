//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Contact {
  /// Returns a new [Contact] instance.
  Contact({
    required this.id,
    required this.settings,
    this.firstName,
    this.lastName,
    this.middleName,
    required this.phoneNumber,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;

  ContactSettings settings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? middleName;

  String phoneNumber;

  Object? metadata;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Contact &&
    other.id == id &&
    other.settings == settings &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.middleName == middleName &&
    other.phoneNumber == phoneNumber &&
    other.metadata == metadata &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (settings.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (phoneNumber.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Contact[id=$id, settings=$settings, firstName=$firstName, lastName=$lastName, middleName=$middleName, phoneNumber=$phoneNumber, metadata=$metadata, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'settings'] = this.settings;
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    if (this.middleName != null) {
      json[r'middle_name'] = this.middleName;
    } else {
      json[r'middle_name'] = null;
    }
      json[r'phone_number'] = this.phoneNumber;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Contact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Contact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Contact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Contact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Contact(
        id: mapValueOfType<int>(json, r'id')!,
        settings: ContactSettings.fromJson(json[r'settings'])!,
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        middleName: mapValueOfType<String>(json, r'middle_name'),
        phoneNumber: mapValueOfType<String>(json, r'phone_number')!,
        metadata: mapValueOfType<Object>(json, r'metadata'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Contact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Contact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Contact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Contact> mapFromJson(dynamic json) {
    final map = <String, Contact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Contact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Contact-objects as value to a dart map
  static Map<String, List<Contact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Contact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Contact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'settings',
    'phone_number',
    'created_at',
    'updated_at',
  };
}

