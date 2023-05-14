import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownproject/Bubble%20Tea%20App/components/drink_tile.dart';
import 'package:ownproject/Bubble%20Tea%20App/models/drink.dart';
import 'package:ownproject/Bubble%20Tea%20App/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  /// remove drink from cart
  void removeFromCart(Drink drink){
    Provider.of<BubbleTeaShop>(context,listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(builder: (context,value,child) => SafeArea(child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          /// heading
          Text('Your Cart',style: TextStyle(fontSize: 20),),

          SizedBox(height: 15,),

          /// List of your cart item
          Expanded(child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context,index){

            /// get individual drink in cart first
              Drink drink = value.cart[index];

            /// return as a nice tile
           return DrinkTile(drink: drink, onTap: () => removeFromCart(drink), trailing:Icon(Icons.delete));

          }
          ),
          ),

          /// pay button
          MaterialButton(
              child: Text("PAY",style: TextStyle(color: Colors.white),),
              color: Colors.brown,
              onPressed: (){})
        ],
      ),
    )
    ) );
  }
}
