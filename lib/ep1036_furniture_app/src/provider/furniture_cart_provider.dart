import 'package:flutter_notebook_17th/ep1036_furniture_app/src/model/furniture_cart_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final furnitureCartProvider = StateProvider<List<CartItem>>((ref) => [
//       CartItem(
//           title: "George",
//           color: "Black",
//           price: 299,
//           img: "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__340.jpg",
//           subtitle: "Modern Couch",
//           count: 1),
//       CartItem(
//           title: "George",
//           color: "Black",
//           price: 299,
//           img: "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__340.jpg",
//           subtitle: "Modern Couch",
//           count: 1),
//     ]);

final furnitureCartProvider = StateNotifierProvider<FurnitureCartItems, List<CartItem>>((ref) => FurnitureCartItems([
      CartItem(
          title: "George",
          color: "Black",
          price: 299,
          img: "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__340.jpg",
          subtitle: "Modern Couch"),
      CartItem(
          title: "George",
          color: "Black",
          price: 299,
          img: "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376__340.jpg",
          subtitle: "Modern Couch"),
    ]));

class FurnitureCartItems extends StateNotifier<List<CartItem>> {
  FurnitureCartItems(state) : super(state ?? []);

  incrementItem(int index) {}
}
