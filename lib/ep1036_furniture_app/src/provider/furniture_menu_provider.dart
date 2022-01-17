import 'package:flutter_riverpod/flutter_riverpod.dart';

enum FurnitureMenu{
  home,
  favorite,
  cart,
  profile
}

final furnitureMenuProvider = StateProvider<FurnitureMenu>((ref)=> FurnitureMenu.home);