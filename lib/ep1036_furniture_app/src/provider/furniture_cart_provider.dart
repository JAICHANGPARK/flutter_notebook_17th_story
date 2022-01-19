import 'package:flutter_notebook_17th/ep1036_furniture_app/src/model/furniture_cart_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final furnitureCartProvider = StateProvider<List<CartItem>>((ref) => [
  CartItem()

]);

class FurnitureCartItems extends StateNotifier{
  FurnitureCartItems(state) : super(state);

  List<CartItem> _items = [
    CartItem(),
    CartItem()
  ];

  incrementItem(int index){

  }

}