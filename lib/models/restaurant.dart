import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  // list of food menu
  final List<Food> _menu =[
    //burgers
    Food(
        name: "Classic Cheeseburger",
        description:"A juicy checken patty with melted cheddar , lettuce , tomato , and a hint of onion and picl . ",
        imagePath: "lib/images/burger/cheese_burger.jpg",
        price:8.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),

        ],
    ),

    Food(
      name: "BBQ Bacon Burger",
      description:"Smoky BBQ sauce , crispy bacon , and onion rings make this chicken burger a savory delight.",
      imagePath: "lib/images/burger/bbq_burger.jpg",
      price:10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),

      ],
    ),

    Food(
      name: "Veggie Burger",
      description:"A heartly veggie patty topped with fresh avocado , lettuce , and tomato on a whole . ",
      imagePath: "lib/images/burger/vege_burger.jpg",
      price:5.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spread", price: 1.99),

      ],
    ),

    Food(
      name: "Aloha Burger",
      description:" A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. ",
      imagePath: "lib/images/burger/aloha_burger.jpg",
      price:9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaza", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price:1.49),

      ],
    ),

    Food(
      name: "Blue Moon Burger",
      description:"A comfort food burger with seasoned beef, blue cheese, lettuce, tomato, fried onions, and a toasted bun",
      imagePath: "lib/images/burger/bluemoon_burger.jpg",
      price:9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Sauteed Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 0.99),

      ],
    ),

    //salads

    Food(
      name: "Caesar Salad",
      description:"A green salad made with romaine lettuce, croutons, and Caesar dressing, which typically includes olive oil, lemon juice, Worcestershire sauce, Dijon mustard, and garlic.",
      imagePath: "lib/images/salads/ceasar_salad.jpg",
      price:7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Checken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),

      ],
    ),

    Food(
      name: "Greek Salad",
      description:" A flavorful dish made with fresh vegetables, including tomatoes, cucumbers, and greens, and a key ingredient of feta cheese",
      imagePath: "lib/images/salads/greek_salad.jpg",
      price:8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),

      ],
    ),

    Food(
      name: "Quinoa Salad",
      description:" A flavorful dish that can be made with a variety of ingredients, such as vegetables, protein, healthy fats, and complex carbs.",
      imagePath: "lib/images/salads/quinoa_salad.jpg",
      price:8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 1.99),

      ],
    ),

    Food(
      name: "Asian Sesame Salad",
      description:"A flavorful and satisfying salad with a base of greens or shredded vegetables, tossed in a sesame-based dressing. ",
      imagePath: "lib/images/salads/asiansesame_salad.jpg",
      price:9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mandarin Orangers", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),

      ],
    ),

    Food(
      name: "South West Chicken Salad",
      description:"An Asian Sesame Salad is a flavorful and satisfying salad with a base of greens or shredded vegetables, tossed in a sesame-based dressing.  ",
      imagePath: "lib/images/salads/southwest_salad.jpg",
      price:9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.49),
        Addon(name: "Gaucamole", price: 1.99),

      ],
    ),


    
    //sides

    Food(
      name: "Sweet Patato Fries",
      description:"Sweet potato fries are a delicious and colorful twist on the classic french fry. ",
      imagePath: "lib/images/sides/sweet_patato_side.jpg",
      price:4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cajun Spice", price: 2.99),

      ],
    ),

    Food(
      name: "Onion Rings",
      description:" A type of appetizer or side dish made from onion slices coated in batter or bread crumbs and deep-fried. ",
      imagePath: "lib/images/sides/onion_rings_side.jpg",
      price:3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesan Dust", price: 1.99),

      ],
    ),

    Food(
      name: "Garlic Bread",
      description:" A flavorful Italian dish of bread toasted with garlic and butter or olive oil, and sometimes other toppings like oregano, cheese, or black pepper.",
      imagePath: "lib/images/sides/garlic_bread_side.jpg",
      price:4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella Cheese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),

      ],
    ),

    Food(
      name: "Loaded Sweet Patato Fries",
      description:"Loaded sweet potato fries take the classic sweet potato fry and turn it into a flavor and texture explosion.  ",
      imagePath: "lib/images/sides/loadedfries_side.jpg",
      price:4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onions", price: 0.99),

      ],
    ),

    Food(
      name: "Crispy Mac & Cheese Bites",
      description:"Crispy Mac and Cheese Bites are the ultimate comfort food upgrade, offering a delightful textural contrast and an explosion of cheesy goodness in every bite.",
      imagePath: "lib/images/sides/mac_side.jpg",
      price:4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalapeno Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 0.99),

      ],
    ),

    
    //desserts

    Food(
      name: "Badam Burfi",
      description:" A traditional Indian dessert made from almond flour, sugar, and cardamom powder. ",
      imagePath: "lib/images/desserts/badam_burfi.jpg",
      price:5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanila Ice Creame", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Ice Cream", price: 1.99),

      ],
    ),
    Food(
      name: "Gulab Jamun",
      description:"A milk-based dessert from the Indian subcontinent that consists of balls of fried dough soaked in a sweet, rose-flavored sugar syrup. ",
      imagePath: "lib/images/desserts/gulab_jamun.jpg",
      price:6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),

      ],
    ),
    Food(
      name: "Mango Burfi",
      description:"Mango burfi is a delightful Indian dessert that combines the richness of fudge with the tropical sweetness of mangoes.",
      imagePath: "lib/images/desserts/mango_burfi.jpg",
      price:5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caremel Sauce", price: 0.99),
        Addon(name: "Vanill Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),

      ],
    ),
    Food(
      name: "Milk Burfi",
      description:"A dense, fudge-like Indian dessert made from milk, ghee, sugar, and sometimes cardamom and pistachios. ",
      imagePath: "lib/images/desserts/milk_barfi.jpg",
      price:4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.99),
        Addon(name: "Green Onions", price: 2.99),

      ],
    ),
    Food(
      name: "Ras Malai",
      description:" A popular Indian dessert that consists of cottage cheese dumplings, also known as rasgullas, soaked in a cardamom- and saffron-flavored milk syrup. ",
      imagePath: "lib/images/desserts/rasmalai.jpg",
      price:5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 0.99),

      ],
    ),
    
    //drinks

    Food(
      name: "Badam Milk",
      description:"A popular Indian milk beverage made with almonds, milk, cardamom, saffron, and sugar. ",
      imagePath: "lib/images/drinks/badam_milk.jpg",
      price:2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flaver", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),

      ],
    ),
    Food(
      name: "Dry Fruit Lassi",
      description:"Dry Fruit Lassi is a creamy and refreshing drink originating from India, perfect for satisfying a sweet tooth on a hot day. ",
      imagePath: "lib/images/drinks/dryfruit.jpg",
      price:2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach Flaver", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.99),
        Addon(name: "Honey", price: 2.99),

      ],
    ),
    Food(
      name: "Fresh Lime Soda",
      description:" A sweet and refreshing drink that combines saltiness and lime flavor. ",
      imagePath: "lib/images/drinks/freshlime_soda.jpg",
      price:2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 0.99),
        Addon(name: "Almond Milk", price: 1.99),
        Addon(name: "Chia Seeds", price: 2.99),

      ],
    ),
    Food(
      name: "Masala Chaas",
      description:"A refreshing Indian drink that is mildly spicy and tangy.",
      imagePath: "lib/images/drinks/masala_chaas.jpg",
      price:1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 0.99),
        Addon(name: "Raspberry Puree", price: 1.99),
        Addon(name: "Splash of Coconut Rum", price: 2.99),

      ],
    ),
    Food(
      name: "Sharbat",
      description:"a sweet, chilled drink made from fruit or flower petals.  ",
      imagePath: "lib/images/drinks/sharbat.jpg",
      price:2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 0.49),
        Addon(name: "Whipped Cream", price: 0.99),

      ],
    ),
  ];
  /*

  G E T T E R S

   */
 List<Food> get menu=>_menu;
 List<CartItem> get cart => _cart;

   /*

   O P E R A T I O N S

    */

  // usert cart
  final List<CartItem> _cart =[];
// add to cart

void addToCart(Food food,List<Addon> selectedAddons){
  // see if there is a cart item already with the same food and selcted addons
  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    //check if the food items are the same
    bool isSameFood = item.food==food;

    // check if the list of selected addons are the same
    bool isSameAddons =
    ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameFood && isSameAddons;
  });
  // if item already exists , increase it's quantity
  if(cartItem !=null){
    cartItem.quantity++;
  }
  // otherwise , add a new cart item to the cart
  else{
    _cart.add(
        CartItem(
        food: food,
        selectedAddons: selectedAddons,
        ));
  }
  notifyListeners();
}
// remove from cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if(cartIndex !=-1){
    if(_cart[cartIndex].quantity >1){
      _cart[cartIndex].quantity--;
    }
    else{
      _cart.removeAt(cartIndex);
    }
  }
  notifyListeners();
}

//get total price of cart
double getTotalPrice(){
  double total=0.0;
  for(CartItem cartItem in _cart){
    double itemTotal =cartItem.food.price;
    for(Addon addon in cartItem.selectedAddons){
      itemTotal +=addon.price;
    }
    total += itemTotal * cartItem.quantity;
  }
  return total;
}

// get total number of items in cart

int getTotalItemCount(){
  int totalItemCount =0;

  for(CartItem cartItem in _cart){
    totalItemCount += cartItem.quantity;
  }
  return totalItemCount;
}

// clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();

}



    /*

   H E L P E R S

    */
// generate a receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("_________");

    for(final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("  Add-ons : ${_formatAddons(cartItem.selectedAddons)}");

      }
      receipt.writeln();
    }
    receipt.writeln("_________");
    receipt.writeln();
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// format double valie into money
String _formatPrice(double price){
  return "\$${price.toStringAsFixed(2)}";
}

// format list of addons into a string summary
String _formatAddons(List<Addon> addons){
  return addons.map((addon) => "${addon.name}(${_formatPrice(addon.price)})").join(",");
}
}