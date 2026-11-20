
class Employee {
  final String id;
  final String name;
  final String email;
  final String department;
  final String status;

  const Employee({
    required this.id,
    required this.name,
    required this.email,
    required this.department,
    required this.status,
  });

  factory Employee.fromMap(Map<String, dynamic> data) {
    return Employee(
      id: data['id']?.toString() ?? '',
      name: data['name']?.toString() ?? '',
      email: data['email']?.toString() ?? '',
      department: data['department']?.toString() ?? '',
      status: data['status']?.toString() ?? 'Active',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'department': department,
      'status': status,
    };
  }

  Employee copyWith({
    String? name,
    String? email,
    String? department,
    String? status,
  }) {
    return Employee(
      id: id,
      name: name ?? this.name,
      email: email ?? this.email,
      department: department ?? this.department,
      status: status ?? this.status,
    );
  }
}
