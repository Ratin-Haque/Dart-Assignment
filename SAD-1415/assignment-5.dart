
//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415



//1. Add name to hello.txt


import 'dart:io';

void main() {
  File file = File("hello.txt");

  file.writeAsStringSync("Ahsanul Huda");

  print("Name added successfully.");
}



//2. Append your friend's name to an existing file

/letllo.txt already contains your name.

import 'dart:io';

void main() {
  File file = File("hello.txt");

  file.writeAsStringSync(
    "\nJohn",
    mode: FileMode.append,
  );

  print("Friend's name added successfully.");
}



//3 Get the current working directory


import 'dart:io';

void main() {
  Directory directory = Directory.current;

  print("Current working directory:");
  print(directory.path);
}



//4. Copy hello.txt to hello_copy.txt


import 'dart:io';

void main() {
  File file = File("hello.txt");

  file.copySync("hello_copy.txt");

  print("File copied successfully.");
}



//5. Create 100 files using a loop

import 'dart:io';

void main() {
  for (int i = 1; i <= 100; i++) {
    File file = File("file$i.txt");

    file.writeAsStringSync("This is file $i");
  }

  print("100 files created successfully.");
}



//6. Delete hello_copy.txt
//First, we create the file and then delete it, as requested.


import 'dart:io';

void main() {
  File file = File("hello_copy.txt");

  // Create the file
  file.writeAsStringSync("Hello");

  // Delete the file
  file.deleteSync();

  print("hello_copy.txt deleted successfully.");
}



//7. Store student information in CSV and read it


import 'dart:io';

void main() {
  File file = File("students.csv");

  // Write student data
  file.writeAsStringSync(
    "Name,Age,Address\n"
    "John,20,Dhaka\n"
    "David,22,Sylhet\n"
    "Alex,21,Chittagong\n"
  );

  // Read the CSV file
  String data = file.readAsStringSync();

  print("Student Information:");
  print(data);
}

