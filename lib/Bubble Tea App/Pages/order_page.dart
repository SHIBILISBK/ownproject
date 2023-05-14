import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ownproject/Bubble%20Tea%20App/models/shop.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class OrderPage extends StatefulWidget {
  final   Drink drink;
   OrderPage({super. key,required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  /// customize sweetness
  double sweetValue = 0.5;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }
  /// customize ice
  double iceValue = 0.5;
  void customizeIce(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }
  /// customize pearl
  double pearlValue = 0.5;
  void customizePearl(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  /// add to cart
  void addToCart(){
    /// firstly, add to cart
    Provider.of<BubbleTeaShop>(context,listen: false).addToCart(widget.drink);

    /// direct user back to shop page
    Navigator.pop(context);

    /// let user know  it has been successfully added
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully added",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.brown,
    ));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name),),
      backgroundColor: Colors.brown[200],
      body: Column(
        children: [
          /// drink image
          Image.asset(widget.drink.imagePath),
          
          /// sliders to customize drink
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                /// sweetness slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width:50,
                   child: Text('Sweet')),
                    Expanded(
                      child: Slider(value: sweetValue,
                          label: sweetValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeSweet(value),),
                    )
                  ],
                ),
                /// ice slider

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width:50,
                        child: Text('Ice')),
                    Expanded(
                      child: Slider(value: iceValue ,
                        label: iceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value),),
                    )
                  ],
                ),
                /// pearls slider

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 50,
                        child: Text('Pearl')),
                    Expanded(
                      child: Slider(value: pearlValue,
                        label: pearlValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearl(value),),
                    )
                  ],
                ),
              ],
            ),
          ),

          /// add to cart button
          MaterialButton(
              child: Text("Add to cart",style: TextStyle(color: Colors.white),),
              color: Colors.brown,
              onPressed: (){})
        ],
      ),
    );
  }
}
