import 'dart:io';

void getMinValue() {
  String? input;
  List<double> numbers = [];
  
  // welcome message
  print("Hello there! Let's find the minimum value in a list of numbers.\n"
      "Please enter a number and press ENTER. To end the input and see the result, type 'q' or 'Q'.");

  // Loop to collect inputs until the user enter q to exist
  do {
    print("Enter a number (or 'q' to finish):");
    input = stdin.readLineSync();

    // Check if input is valid or no space within it
    if (input != null && input.trim().isNotEmpty) {
      // Try to parse the input as a double
      // return null incase failed parsing
      double? number = double.tryParse(input);

      // If number is valid then we add to list
      if (number != null) {
        numbers.add(number);
      }
      // If input is 'q' or 'Q', exit loop
      else if (input.toLowerCase() == 'q') {
        print("Exiting input mode. Calculating the result...");
      }
      // Invalid number, and repeat entering new number again
      else {
        print("Invalid input. Please enter a valid number or 'q' to quit.");
      }
    }
  } while (input != null && input.toLowerCase() != 'q');

  // If list is not empty, find the minimum value
  if (numbers.isNotEmpty) {
    // Finding the minimum value
    double minValue = numbers.reduce((a, b) => a < b ? a : b);
    print("The minimum value in the list is: $minValue");
  } else {
    print("No valid data entered.");
  }
}
