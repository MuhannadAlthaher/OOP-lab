class Employee {
  String? name;
  String? birthday;
  double? salary;
  int? id;
  Employee(
      {required this.name,
      required this.birthday,
      required this.salary,
      required this.id});

  void empPrint() {
    print("Name:\n$name ID:\n$id Birthday:\n$birthday Salary:\n$salary");
  }
}
