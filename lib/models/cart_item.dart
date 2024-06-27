import 'package:food_delivery/models/food.dart';

class CartItem{
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity =1,
});
  double get totalPrice{
    double addonsprice=selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsprice) * quantity;
  }
}