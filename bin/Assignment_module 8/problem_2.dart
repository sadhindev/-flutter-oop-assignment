class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department)
      : super(name, salary);

  void displayInfo() {
    print('Manager Name: $name');
    print('Salary: \$$salary');
    print('Department: $department');
    print('---');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print('Developer Name: $name');
    print('Salary: \$$salary');
    print('Programming Language: $programmingLanguage');
    print('---');
  }
}

void main() {
  Manager manager = Manager('Rahim', 90000, 'HR');
  Developer developer = Developer('Karim', 75000, 'Dart');

  manager.displayInfo();
  developer.displayInfo();
}