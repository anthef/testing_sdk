import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Force',
        price: '220',
        description: 'Nice shoes',
        imagePath: 'lib/images/airforce.png'),
    Shoe(
        name: 'Air Jordan I',
        price: '250',
        description: 'What a great shoes',
        imagePath: 'lib/images/airjordan.png'),
    Shoe(
        name: 'Air Jordan V',
        price: '300',
        description: 'Beautiful handcrafted',
        imagePath: 'lib/images/airjordan2.png'),
    Shoe(
        name: 'Air Max',
        price: '210',
        description: 'Perfect shoes for school',
        imagePath: 'lib/images/airmax.png'),
  ];
  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
