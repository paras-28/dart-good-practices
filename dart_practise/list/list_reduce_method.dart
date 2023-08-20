void main() {
  List<String> stringList = ['Apple', 'Banana', 'Orange', 'Grapes'];
  String a = stringList.reduce((value, element) => "$value" + ', ' + element);
  print(a); // Apple, Banana, Orange, Grapes

  //Info .map().toList() makes a list of intergers and then reduce method caluate the total price and
  // we know reduce method return type is List<Item> type
  int? totalprice = itemList
      .map((e) => e.price)
      .toList()
      .reduce((value, element) => value! + element!);
  print("total price is ${totalprice}");

  // Method 2
  // Info working takes firstElement and secondElement perform some action
  // and result will be the the next action firstElement
  Item result = itemList.reduce((firstElement, secondElement) => Item(
      price: firstElement.price! + secondElement.price!,
      id: secondElement.id,
      name: firstElement.name));

  print("result is ${result}");

// fold method
  // int totalpriceOfFoldMethod =
  int total = itemList.fold(0, (int previousValue, Item item) {
    return previousValue + (item.price ?? 0);
  });

  Item total2 = itemList.fold(Item(id: 10, name: "v", price: 25),
      (Item previousValue, Item item) {
    return Item(price: previousValue.price! + item.price!);
  });

  print(total);
  print(total2);
}

List<Item> itemList = [
  Item(id: 1, price: 10, name: 'Burger'),
  Item(id: 2, price: 20, name: 'Pizza'),
  Item(id: 3, price: 15, name: 'Noodles'),
];

class Item {
  int? id;
  int? price;
  String? name;

  Item({
    this.id,
    this.price,
    this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          price == other.price &&
          name == other.name);

  @override
  int get hashCode => id.hashCode ^ price.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'Item{' + ' id: $id,' + ' price: $price,' + ' name: $name,' + '}';
  }

  Item copyWith({
    int? id,
    int? price,
    String? name,
  }) {
    return Item(
      id: id ?? this.id,
      price: price ?? this.price,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'price': this.price,
      'name': this.name,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      price: map['price'] as int,
      name: map['name'] as String,
    );
  }
}
