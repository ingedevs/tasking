import 'package:isar/isar.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';

abstract class TaskDataSource {
  Future<List<Task>> getAll();
  Future<Task?> get(int id);
  Future<void> write(Task task);
  Future<void> delete(int id);
  Future<void> restore();
}

class TaskDataSourceImpl extends TaskDataSource {
  final Isar _isar = IsarService.isar;

  @override
  Future<Task?> get(int id) async {
    try {
      return await _isar.tasks.get(id);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<Task>> getAll() async {
    try {
      return await _isar.tasks.where().findAll();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> write(Task task) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tasks.put(task);
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> delete(int id) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tasks.delete(id);
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> restore() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.tasks.where().deleteAll();
      });
    } catch (e) {
      throw Exception(e);
    }
  }
}
