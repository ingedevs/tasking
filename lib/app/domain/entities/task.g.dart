// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskCollection on Isar {
  IsarCollection<Task> get tasks => this.collection();
}

const TaskSchema = CollectionSchema(
  name: r'Task',
  id: 2998003626758701373,
  properties: {
    r'createAt': PropertySchema(
      id: 0,
      name: r'createAt',
      type: IsarType.dateTime,
    ),
    r'dueDate': PropertySchema(
      id: 1,
      name: r'dueDate',
      type: IsarType.dateTime,
    ),
    r'isCompleted': PropertySchema(
      id: 2,
      name: r'isCompleted',
      type: IsarType.dateTime,
    ),
    r'message': PropertySchema(
      id: 3,
      name: r'message',
      type: IsarType.string,
    ),
    r'reminder': PropertySchema(
      id: 4,
      name: r'reminder',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _taskEstimateSize,
  serialize: _taskSerialize,
  deserialize: _taskDeserialize,
  deserializeProp: _taskDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _taskGetId,
  getLinks: _taskGetLinks,
  attach: _taskAttach,
  version: '3.1.0+1',
);

int _taskEstimateSize(
  Task object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.message.length * 3;
  return bytesCount;
}

void _taskSerialize(
  Task object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createAt);
  writer.writeDateTime(offsets[1], object.dueDate);
  writer.writeDateTime(offsets[2], object.isCompleted);
  writer.writeString(offsets[3], object.message);
  writer.writeDateTime(offsets[4], object.reminder);
}

Task _taskDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Task(
    createAt: reader.readDateTimeOrNull(offsets[0]),
    dueDate: reader.readDateTimeOrNull(offsets[1]),
    isCompleted: reader.readDateTimeOrNull(offsets[2]),
    message: reader.readString(offsets[3]),
    reminder: reader.readDateTimeOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _taskDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskGetId(Task object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskGetLinks(Task object) {
  return [];
}

void _taskAttach(IsarCollection<dynamic> col, Id id, Task object) {
  object.id = id;
}

extension TaskQueryWhereSort on QueryBuilder<Task, Task, QWhere> {
  QueryBuilder<Task, Task, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskQueryWhere on QueryBuilder<Task, Task, QWhereClause> {
  QueryBuilder<Task, Task, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Task, Task, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskQueryFilter on QueryBuilder<Task, Task, QFilterCondition> {
  QueryBuilder<Task, Task, QAfterFilterCondition> createAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createAt',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> createAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createAt',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> createAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> createAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> createAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> createAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> dueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> dueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> dueDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> dueDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dueDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> dueDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dueDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> dueDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> isCompletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCompleted',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> isCompletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCompleted',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> isCompletedEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> isCompletedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> isCompletedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> isCompletedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isCompleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> reminderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reminder',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> reminderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reminder',
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> reminderEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reminder',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> reminderGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reminder',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> reminderLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reminder',
        value: value,
      ));
    });
  }

  QueryBuilder<Task, Task, QAfterFilterCondition> reminderBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reminder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskQueryObject on QueryBuilder<Task, Task, QFilterCondition> {}

extension TaskQueryLinks on QueryBuilder<Task, Task, QFilterCondition> {}

extension TaskQuerySortBy on QueryBuilder<Task, Task, QSortBy> {
  QueryBuilder<Task, Task, QAfterSortBy> sortByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createAt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createAt', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> sortByReminderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.desc);
    });
  }
}

extension TaskQuerySortThenBy on QueryBuilder<Task, Task, QSortThenBy> {
  QueryBuilder<Task, Task, QAfterSortBy> thenByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createAt', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createAt', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCompleted', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.asc);
    });
  }

  QueryBuilder<Task, Task, QAfterSortBy> thenByReminderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.desc);
    });
  }
}

extension TaskQueryWhereDistinct on QueryBuilder<Task, Task, QDistinct> {
  QueryBuilder<Task, Task, QDistinct> distinctByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createAt');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueDate');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCompleted');
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Task, Task, QDistinct> distinctByReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reminder');
    });
  }
}

extension TaskQueryProperty on QueryBuilder<Task, Task, QQueryProperty> {
  QueryBuilder<Task, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Task, DateTime?, QQueryOperations> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createAt');
    });
  }

  QueryBuilder<Task, DateTime?, QQueryOperations> dueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueDate');
    });
  }

  QueryBuilder<Task, DateTime?, QQueryOperations> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCompleted');
    });
  }

  QueryBuilder<Task, String, QQueryOperations> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message');
    });
  }

  QueryBuilder<Task, DateTime?, QQueryOperations> reminderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reminder');
    });
  }
}
