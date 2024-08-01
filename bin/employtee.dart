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

  void empprint() {
    print("name $name id$id birthday $birthday salary $salary id $id");
  }
}
