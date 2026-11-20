
import 'package:cloud_firestore/cloud_firestore.dart';

import 'employee_model.dart';

class EmployeeRepository {
  final FirebaseFirestore _firestore;

  EmployeeRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _employees =>
      _firestore.collection('employees');

  // Retrieve all employees in real time.
  Stream<List<Employee>> getEmployees() {
    return _employees.snapshots().map((snapshot) {
      return snapshot.docs.map((document) {
        return Employee.fromMap(document.data());
      }).toList();
    });
  }

  // Add an employee using a Firestore-generated document ID.
  Future<void> addEmployee({
    required String name,
    required String email,
    required String department,
    required String status,
  }) async {
    final document = _employees.doc();

    final employee = Employee(
      id: document.id,
      name: name.trim(),
      email: email.trim(),
      department: department.trim(),
      status: status,
    );

    await document.set(employee.toMap());
  }

  // Update an existing employee.
  Future<void> updateEmployee(Employee employee) async {
    await _employees.doc(employee.id).update(employee.toMap());
  }

  // Delete an employee.
  Future<void> deleteEmployee(String employeeId) async {
    await _employees.doc(employeeId).delete();
  }
}
