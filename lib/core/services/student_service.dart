import 'dart:io';
import 'package:cyber_school/core/utils/api.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../models/student_model.dart';

class StudentService extends GetxService {
  // Get all students
  Future<List<Student>?> fetchStudents(String query) async {
    try {
      final response = await Api.get('/students$query');
      return (response.data as List).map((json) => Student.fromJson(json)).toList();
    } on DioException catch (e) {
      if (e.response != null) {
        stderr.writeln('Error fetching students: ${e.response?.statusCode} ${e.response?.statusMessage}');
      } else {
        stderr.writeln('Error fetching students: ${e.message}');
      }
      return null;
    } catch (e) {
      stderr.writeln('Error fetching students: $e');
      return null;
    }
  }

  // Add new student
  Future<void> addStudent(Student student) async {
    try {
      await Api.post('/students', data: student.toJson());
    } on DioException catch (e) {
      if (e.response != null) {
        stderr.writeln('Error adding student: ${e.response?.statusCode} ${e.response?.statusMessage}');
      } else {
        stderr.writeln('Error adding student: ${e.message}');
      }
      throw Exception('Error adding student');
    } catch (e) {
      stderr.writeln('Error adding student: $e');
      throw Exception('Error adding student');
    }
  }

  // Update student by id
  Future<void> updateStudent(Student student) async {
    try {
      await Api.put('/students/${student.id}', data: student.toJson());
    } on DioException catch (e) {
      if (e.response != null) {
        stderr.writeln('Error updating student: ${e.response?.statusCode} ${e.response?.statusMessage}');
      } else {
        stderr.writeln('Error updating student: ${e.message}');
      }
      throw Exception('Error updating student');
    } catch (e) {
      stderr.writeln('Error updating student: $e');
      throw Exception('Error updating student');
    }
  }

  // Delete student by id
  Future<void> deleteStudent(int id) async {
    try {
      await Api.delete('/students/$id');
    } on DioException catch (e) {
      if (e.response != null) {
        stderr.writeln('Error deleting student: ${e.response?.statusCode} ${e.response?.statusMessage}');
      } else {
        stderr.writeln('Error deleting student: ${e.message}');
      }
      throw Exception('Error deleting student');
    } catch (e) {
      stderr.writeln('Error deleting student: $e');
      throw Exception('Error deleting student');
    }
  }
}
