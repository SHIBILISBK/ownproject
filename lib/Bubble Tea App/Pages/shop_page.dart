import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownproject/Bubble%20Tea%20App/Pages/order_page.dart';
import 'package:ownproject/Bubble%20Tea%20App/components/drink_tile.dart';
import 'package:ownproject/Bubble%20Tea%20App/models/drink.dart';
import 'package:ownproject/Bubble%20Tea%20App/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  /// user selected a drink , go to order page
  void goToOrderPage(Drink drink){

    /// navigate to order page
    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage(drink: drink,)));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(builder: (context,value,child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              /// heading
              Text("Bubble Tea Shop",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15,),

              /// List of drinks for sale
              Expanded(child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context,index) {
                    /// get individual drink from shop
                    Drink individualDrink = value.shop[index];

                    /// return that drink as a nice tile
                    return DrinkTile(drink: individualDrink,
                        onTap: () => goToOrderPage(individualDrink),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    );
                  }
              )
              )
            ],
          ),
        )),);
  }
}
