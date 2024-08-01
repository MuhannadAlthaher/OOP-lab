class Employee {
  late String name;
  late String birthday;
  late double salary;
  late int id;
  late String possition;
  Employee(
      {required this.name,
      required this.birthday,
      required this.salary,
      required this.id,
      required this.possition});

  void empPrint() {
    print(
        "Name:$name \nID:$id\nPossition:$possition\nBirth day:$birthday\n Salary:\n$salary");
  }
}
