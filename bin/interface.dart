import 'dart:io';
import 'employee.dart';
import 'global.dart';
import 'team.dart';

void menu() {
  late String input;
  do {
    print("1- Employee 2- Teams 0 quit");
    input = stdin.readLineSync()!;
    switch (input) {
      case == "1":
        print("1- add 2- View ");
        late String opt = stdin.readLineSync()!;
        switch (opt) {
          case == "1":
            empAdd();
            break;
          case == "2":
            for (var emp in employees) {
              emp.empPrint();
            }
        }
      case == "2":
        print("1- add 2- View");
        late String opt = stdin.readLineSync()!;
        switch (opt) {
          case == "1":
            addTeam();
            break;
          case == "2":
            for (Team t in teams) {
              t.printInfo();
            }
        }
    }
  } while (input != "0");
}

void empAdd() {
  print("input name");
  String name = stdin.readLineSync()!;
  print("birth day");
  String birthday = stdin.readLineSync()!;
  print("salay");
  double salary = double.parse(stdin.readLineSync()!);
  print("Position");
  String position = stdin.readLineSync()!;
  late int id;
  if (employees.isEmpty) {
    id = 1;
  } else {
    int lastId = employees.last.id;
    id = 1 + lastId;
  }

  Employee emp = Employee(
      name: name,
      birthday: birthday,
      salary: salary,
      possition: position,
      id: id);
  employees.add(emp);
}

void viewEmployee() {
  for (var emp in employees) {
    emp.empPrint();
  }
}

void addTeam() {
  late List<Employee> emps = [];
  print("Name of Team");
  String name = stdin.readLineSync()!;
  print("ID of employee to add to the team");
  print("0 to stop the loop");
  late int id = 0;
  do {
    id = int.parse(stdin.readLineSync()!);
    try {
      Employee emp = employees[id];
      emps.add(emp);
    } catch (e) {
    }
  } while (id != 0);
  Team team = Team(teamName: name, employees: emps);
  teams.add(team);
}
