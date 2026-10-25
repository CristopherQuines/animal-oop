
abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound();

  void displayInfo() {
    print('Name: $name');
    print('Age: $age years old');
  }
}

mixin CareActions {
  void showCareTip(String animalName) {
    print('Care tip for $animalName: Provide proper food and clean water.');
  }
}

class Dog extends Animal with CareActions {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('$name says: Arf! Arf!');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: Dog');
    print('Breed: $breed');
  }

  void fetch() {
    print('$name is fetching a ball.');
  }
}

class Cat extends Animal {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  @override
  void makeSound() {
    print('$name says: Meow! Meow!');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: Cat');
    print('Color: $color');
  }

  void climb() {
    print('$name is climbing a tree.');
  }
}

class PetHotel with CareActions {
  String hotelName;

  PetHotel(this.hotelName);

  void displayHotel() {
    print('Pet Hotel: $hotelName');
  }
}

void main() {
  Dog dog = Dog('Buddy', 3, 'Golden Retriever');
  Cat cat = Cat('Ming', 2, 'White');

  List<Animal> animals = [dog, cat];

  print('================================');
  print('       ANIMAL MANAGEMENT');
  print('================================');

  for (Animal animal in animals) {
    print('\n--------------------------------');
    animal.displayInfo();
    animal.makeSound();
  }

  print('\n================================');
  print('       ADDITIONAL ACTIONS');
  print('================================');

  dog.fetch();
  dog.showCareTip(dog.name);
  cat.climb();

  print('\n================================');
  print('       PET HOTEL SYSTEM');
  print('================================');

  PetHotel hotel = PetHotel('Happy Paws Pet Hotel');
  hotel.displayHotel();
  hotel.showCareTip('All pets');

  print('\nProgram completed successfully.');
}
