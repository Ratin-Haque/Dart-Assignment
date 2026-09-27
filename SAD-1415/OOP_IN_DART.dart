
//THIS ASSIGNMENT IS FOR PRACTICE PURPOSES ONLY AND IS DONE BY RATIN-1415



//1. Student class


class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
  }
}

void main() {
  Student student = Student("Ahsanul Huda", 1414, 3.50);

  student.displayInfo();
}



//2. Rectangle — area and perimeter


class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() {
    return length * width;
  }

  double perimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 5);

  print("Area = ${rectangle.area()}");
  print("Perimeter = ${rectangle.perimeter()}");
}




//3. Book class


class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void displayInfo() {
    print("Title: $title");
    print("Subtitle: $subtitle");
    print("Author: $author");
  }
}

void main() {
  Book book = Book(
    "Dart Programming",
    "Learn Dart Easily",
    "John Doe",
  );

  book.displayInfo();
}



//4. Named constructors
// Car.manual() and Car.automatic().

class Car {
  Car.manual() {
    print("This is a manual car.");
  }

  Car.automatic() {
    print("This is an automatic car.");
  }
}

void main() {
  Car car1 = Car.manual();
  Car car2 = Car.automatic();
}




//5. Const constructor


class Customer {
  final String name;
  final int id;

  const Customer(this.name, this.id);

  void display() {
    print("Name: $name");
    print("ID: $id");
  }
}

void main() {
  const Customer customer = Customer("John", 101);

  customer.display();
}





//6. BankAccount — deposit and withdraw



class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance = balance + amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance");
    }
  }

  void displayBalance() {
    print("Balance: $balance");
  }
}

void main() {
  BankAccount account = BankAccount(5000);

  account.deposit(2000);
  account.withdraw(1000);

  account.displayBalance();
}




//7. Static MathHelper


class MathHelper {
  static int add(int a, int b) {
    return a + b;
  }

  static int multiply(int a, int b) {
    return a * b;
  }
}

void main() {
  print("Addition: ${MathHelper.add(10, 20)}");
  print("Multiplication: ${MathHelper.multiply(10, 20)}");
}



//8. Employee list


class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);

  void display() {
    print("Name: $name");
    print("Designation: $designation");
    print("Salary: $salary");
    print("");
  }
}

void main() {
  List<Employee> employees = [
    Employee("John", "Manager", 50000),
    Employee("David", "Developer", 40000),
    Employee("Alex", "Designer", 35000),
  ];

  for (Employee employee in employees) {
    employee.display();
  }
}




//9. Temperature with getter and setter


class Temperature {
  double _temp = 0;

  set temp(double celsius) {
    _temp = celsius;
  }

  double get temp {
    return (_temp * 9 / 5) + 32;
  }
}

void main() {
  Temperature temperature = Temperature();

  temperature.temp = 25;

  print("Temperature in Fahrenheit: ${temperature.temp}");
}




//10. BankAccount with private balance

//The balance cannot become negative.


class BankAccount {
  double _balance = 0;

  double get balance {
    return _balance;
  }

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative.");
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  account.balance = 5000;

  print("Balance: ${account.balance}");

  account.balance = -1000;

  print("Balance: ${account.balance}");
}




//11. Person, Teacher and Student


class Person {
  void displayInfo() {
    print("I am a person.");
  }
}

class Teacher extends Person {
  @override
  void displayInfo() {
    print("I am a teacher.");
  }
}

class Student extends Person {
  @override
  void displayInfo() {
    print("I am a student.");
  }
}

void main() {
  Teacher teacher = Teacher();
  Student student = Student();

  teacher.displayInfo();
  student.displayInfo();
}





//12. Person superclass and Employee subclass

class Person {
  String name;

  Person(this.name);

  void displayInfo() {
    print("Name: $name");
  }
}

class Employee extends Person {
  double salary;

  Employee(String name, this.salary) : super(name);

  void displaySalary() {
    print("Salary: $salary");
  }
}

void main() {
  Employee employee = Employee("John", 50000);

  employee.displayInfo();
  employee.displaySalary();
}





//13. Shape, Rectangle and Circle


import 'dart:math';

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 5);
  Circle circle = Circle(5);

  print("Rectangle area: ${rectangle.area()}");
  print("Circle area: ${circle.area()}");
}





//14. Notification polymorphism


class Notification {
  String displayNotification() {
    return "New notification";
  }
}

class EmailNotification extends Notification {
  @override
  String displayNotification() {
    return "You have a new email.";
  }
}

class SMSNotification extends Notification {
  @override
  String displayNotification() {
    return "You have a new SMS.";
  }
}

void main() {
  Notification email = EmailNotification();
  Notification sms = SMSNotification();

  print(email.displayNotification());
  print(sms.displayNotification());
}





//15. Abstract Shape and Square


abstract class Shape {
  double calculateArea();
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Square square = Square(5);

  print("Area = ${square.calculateArea()}");
}





//16. Abstract Appliance and Fan


abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is turned on.");
  }

  @override
  void turnOff() {
    print("Fan is turned off.");
  }
}

void main() {
  Fan fan = Fan();

  fan.turnOn();
  fan.turnOff();
}





//17. Playable interface


abstract class Playable {
  void play();
}

class Football implements Playable {
  @override
  void play() {
    print("Playing football.");
  }
}

class Cricket implements Playable {
  @override
  void play() {
    print("Playing cricket.");
  }
}

void main() {
  Football football = Football();
  Cricket cricket = Cricket();

  football.play();
  cricket.play();
}





//18. Multiple interfaces — Duck



abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is flying.");
  }

  @override
  void swim() {
    print("Duck is swimming.");
  }
}

void main() {
  Duck duck = Duck();

  duck.fly();
  duck.swim();
}





//19. Payment abstraction


abstract class Payment {
  void pay();
}

class CashPayment extends Payment {
  @override
  void pay() {
    print("Payment made with cash.");
  }
}

class CardPayment extends Payment {
  @override
  void pay() {
    print("Payment made with card.");
  }
}

void main() {
  CashPayment cash = CashPayment();
  CardPayment card = CardPayment();

  cash.pay();
  card.pay();
}




//20. toCapitalized() method



String toCapitalized(String text) {
  if (text.isEmpty) {
    return text;
  }

  return text[0].toUpperCase() + text.substring(1);
}

void main() {
  print(toCapitalized("hello"));
  print(toCapitalized("dart programming"));
}





//21. OrderStatus enum


enum OrderStatus {
  pending,
  shipped,
  delivered
}

void main() {
  OrderStatus status = OrderStatus.shipped;

  switch (status) {
    case OrderStatus.pending:
      print("Your order is pending.");
      break;

    case OrderStatus.shipped:
      print("Your order has been shipped.");
      break;

    case OrderStatus.delivered:
      print("Your order has been delivered.");
      break;
  }
}






//22. LoggerMixin


mixin LoggerMixin {
  void logMessage(String message) {
    print("LOG: $message");
  }
}

class User with LoggerMixin {
  String name;

  User(this.name);

  void showUser() {
    logMessage("User: $name");
  }
}

class Product with LoggerMixin {
  String name;

  Product(this.name);

  void showProduct() {
    logMessage("Product: $name");
  }
}

void main() {
  User user = User("John");
  Product product = Product("Laptop");

  user.showUser();
  product.showProduct();
}




//23. Printable mixin using on Document



class Document {
  String title;

  Document(this.title);
}

mixin Printable on Document {
  void display() {
    print("Document: $title");
  }
}

class Invoice extends Document with Printable {
  Invoice(String title) : super(title);
}

class Report extends Document with Printable {
  Report(String title) : super(title);
}

void main() {
  Invoice invoice = Invoice("Invoice 001");
  Report report = Report("Annual Report");

  invoice.display();
  report.display();
}




//24. Generic Box<T>


class Box<T> {
  T value;

  Box(this.value);

  void display() {
    print("Value: $value");
  }
}

void main() {
  Box<int> numberBox = Box(100);
  Box<String> stringBox = Box("Hello");

  numberBox.display();
  stringBox.display();
}




//25. Generic isEqual<T>()


bool isEqual<T>(T a, T b) {
  return a == b;
}

void main() {
  print(isEqual<int>(10, 10));
  print(isEqual<String>("Hello", "Hello"));
  print(isEqual<double>(5.5, 6.5));
}




//26. Generic findLargest<T extends num>()


T findLargest<T extends num>(T a, T b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

void main() {
  print(findLargest<int>(10, 20));
  print(findLargest<double>(5.5, 3.2));
}





//27. Company with Manager and Developer



class Company {
  String name;

  Company(this.name);

  double calculateSalary() {
    return 0;
  }
}

class Manager extends Company {
  double basicSalary;

  Manager(String name, this.basicSalary) : super(name);

  @override
  double calculateSalary() {
    return basicSalary + 10000;
  }
}

class Developer extends Company {
  double basicSalary;

  Developer(String name, this.basicSalary) : super(name);

  @override
  double calculateSalary() {
    return basicSalary + 5000;
  }
}

void main() {
  Manager manager = Manager("John", 50000);
  Developer developer = Developer("David", 40000);

  print("Manager salary: ${manager.calculateSalary()}");
  print("Developer salary: ${developer.calculateSalary()}");
}





//28. Hotel Reservation System


class Guest {
  String name;

  Guest(this.name);
}

class Room {
  int roomNumber;
  String type;
  double price;
  bool isAvailable;

  Room(this.roomNumber, this.type, this.price,
      {this.isAvailable = true});

  void displayRoom() {
    print("Room: $roomNumber");
    print("Type: $type");
    print("Price: $price");
    print("Available: $isAvailable");
  }
}

class Reservation {
  Guest guest;
  Room room;

  Reservation(this.guest, this.room);

  void bookRoom() {
    if (room.isAvailable) {
      room.isAvailable = false;

      print("${guest.name} reserved room ${room.roomNumber}");
    } else {
      print("Room is not available.");
    }
  }

  void cancelReservation() {
    room.isAvailable = true;

    print("Reservation cancelled.");
  }
}

void main() {
  Guest guest = Guest("Ahsan");

  Room room = Room(101, "Deluxe", 5000);

  Reservation reservation = Reservation(guest, room);

  room.displayRoom();

  reservation.bookRoom();

  print("Room available: ${room.isAvailable}");

  reservation.cancelReservation();

  print("Room available: ${room.isAvailable}");
}





//29. Mini Library Management System



class Book {
  String title;
  String author;
  bool _isIssued = false;

  Book(this.title, this.author);

  bool get isIssued => _isIssued;

  void issueBook() {
    _isIssued = true;
  }

  void returnBook() {
    _isIssued = false;
  }
}

class Member {
  String name;
  int id;

  Member(this.name, this.id);
}

class PremiumMember extends Member {
  PremiumMember(String name, int id) : super(name, id);

  void showMembership() {
    print("$name is a premium member.");
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void issueBook(Book book, Member member) {
    if (!book.isIssued) {
      book.issueBook();

      print("${book.title} issued to ${member.name}");
    } else {
      print("${book.title} is already issued.");
    }
  }

  void returnBook(Book book) {
    if (book.isIssued) {
      book.returnBook();

      print("${book.title} returned.");
    } else {
      print("${book.title} was not issued.");
    }
  }

  void displayBooks() {
    for (Book book in books) {
      print(
        "${book.title} - ${book.author} - Issued: ${book.isIssued}",
      );
    }
  }
}

void main() {
  Library library = Library();

  Book book1 = Book("Dart Programming", "John Doe");
  Book book2 = Book("OOP Concepts", "David");

  library.addBook(book1);
  library.addBook(book2);

  Member member = Member("Ahsan", 101);

  PremiumMember premiumMember = PremiumMember("Alex", 102);
  premiumMember.showMembership();

  library.issueBook(book1, member);

  library.displayBooks();

  library.returnBook(book1);

  library.displayBooks();
}





//30. Student Management System



abstract class Person {
  String name;

  Person(this.name);

  void displayInfo();
}

class Student extends Person {
  int id;
  double _cgpa;

  Student(String name, this.id, double cgpa) : _cgpa = cgpa;

  double get cgpa {
    return _cgpa;
  }

  set cgpa(double value) {
    if (value >= 0 && value <= 4) {
      _cgpa = value;
    } else {
      print("Invalid CGPA.");
    }
  }

  @override
  void displayInfo() {
    print("Student Name: $name");
    print("Student ID: $id");
    print("CGPA: $_cgpa");
  }
}

class Course {
  String code;
  String name;
  int credit;

  Course(this.code, this.name, this.credit);

  void displayCourse() {
    print("Course Code: $code");
    print("Course Name: $name");
    print("Credit: $credit");
  }
}

class Enrollment {
  Student student;
  Course course;
  String grade;

  Enrollment(this.student, this.course, this.grade);

  void displayEnrollment() {
    print("Student: ${student.name}");
    print("Course: ${course.name}");
    print("Grade: $grade");
  }
}

void main() {
  Student student = Student("Ahsanul Huda", 1414, 3.50);

  Course course1 = Course(
    "CSE3115",
    "Numerical Methods",
    3,
  );

  Course course2 = Course(
    "CSE3105",
    "Software Engineering",
    3,
  );

  Enrollment enrollment1 = Enrollment(
    student,
    course1,
    "A",
  );

  Enrollment enrollment2 = Enrollment(
    student,
    course2,
    "B+",
  );

  print("===== STUDENT =====");
  student.displayInfo();

  print("\n===== COURSE 1 =====");
  course1.displayCourse();

  print("\n===== COURSE 2 =====");
  course2.displayCourse();

  print("\n===== ENROLLMENT 1 =====");
  enrollment1.displayEnrollment();

  print("\n===== ENROLLMENT 2 =====");
  enrollment2.displayEnrollment();

  print("\n===== UPDATE CGPA =====");
  student.cgpa = 3.75;

  print("Updated CGPA: ${student.cgpa}");
}