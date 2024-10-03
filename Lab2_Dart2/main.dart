import 'dart:io';

main(){
  int? price;
  int? Quantity;
  int total_price;
  print("==================================");
  print("pizza prices: small = 5 USD, medium = 7 USD, large = 10 USD");
  print("Please enter your pizza size (small, medium or large)");
  String? pizza_size = stdin.readLineSync();

  switch(pizza_size){
    case "small": price = 5;
    case "medium": price = 7;
    case "large": price = 10;
    default: price = null;
  }
  if(price == null){
    print("Invalid pizza size. Please re-run the program");
  } else {
    print("Please enter how many pizzas of pizzas size $pizza_size you want");

    String? pizza_quantity = stdin.readLineSync();

    Quantity = int.tryParse(pizza_quantity!);
    if(Quantity == null){
      print("invalid number of pizzas. Please rerun the program");
    } else {
      total_price = Quantity * price!;
      print("The total costs are $total_price");
    }
  }
}