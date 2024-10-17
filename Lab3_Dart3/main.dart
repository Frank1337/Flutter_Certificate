import 'employee.dart' as emp;

late double extraPayPerHour;

main(){

  emp.employee William = new emp.employee("William", "Manager", "Madrid", 5000, 7);

  if(William.salary >= 4000){
    extraPayPerHour = 10;
  }
  else{
    extraPayPerHour = 20;
  }

  double totalSalary = William.salary + (William.OvertimeHours * extraPayPerHour);

  print("Total Salary of employee ${William.getName()} = $totalSalary USD");
}