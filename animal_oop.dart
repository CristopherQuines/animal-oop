
abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

mixin PetCare {
  void showCare() {
    print('Pets need food and water.');
  }
}

class Dog extends Animal with PetCare {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name says Woof!');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name says Meow!');
  }
}

class PetHotel with PetCare {
  void showHotel() {
    print('Welcome to the Pet Hotel!');
  }
}

void main() {
  Dog dog = Dog('Buddy');
  Cat cat = Cat('Ming');

  List<Animal> pets = [dog, cat];

  for (Animal pet in pets) {
    pet.makeSound();
  }

  dog.showCare();

  PetHotel hotel = PetHotel();
  hotel.showHotel();
  hotel.showCare();
}
