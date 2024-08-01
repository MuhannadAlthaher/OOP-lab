import 'employee.dart';

class Team {
  late String teamName;
  late List<Employee> employees;

  Team({
    required this.teamName,
    required this.employees,
  });

  void printInfo() {
    print("--------team info--------");
    print("Team name: $teamName");
    print("Team members:");
    for (var emp in employees) {
      emp.empPrint();
    }
  }

  String getTeamName() {
    return teamName;
  }

  List<Employee>? getEmployees() {
    return employees;
  }
}
