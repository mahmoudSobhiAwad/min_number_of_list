import 'dart:io';

void getMinValue() {
  String? input;
  List<int> numbers = [];

  // welcome message
  print("Hello there! Let's find the minimum value in a list of numbers.\n"
      "Please enter a number and press ENTER. To end the input and see the result, type 'q' or 'Q'.");

  // make do while loop to take all user input and add all in the list
  do {
    print("Enter a number (or 'q' to finish):");
    input = stdin.readLineSync(); //take input from user

    // validate if the input not null or not space
    if (input != null && input.trim().isNotEmpty) {
      // make try pare to convert string into number
      int? number = int.tryParse(input);

      // If number is valid then we add to list
      if (number != null) {
        numbers.add(number);
      }
      // If input is 'q' or 'Q', end loop
      else if (input.toLowerCase() == 'q') {
        print("Exiting input mode. Calculating the result...");
      }
      // show error incase invalid input
      else {
        print("Invalid input. Please enter a valid number or 'q' to quit.");
      }
    }
    //as long as user not null or input is not equal q
  } while (input != null && input.toLowerCase() != 'q');

  // If list is not empty, find the minimum value
  if (numbers.isNotEmpty) {
    // order all the list from lowest to biggest using sort function.
    numbers.sort();
    print("The minimum value in the list is: ${numbers.first}");
  } else {
    print("No valid data entered.");
  }
}
