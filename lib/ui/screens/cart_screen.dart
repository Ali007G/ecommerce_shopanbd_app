import '../utills/app_colours.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<String> productName = ['Mango', 'Banana', 'Orange', 'Grapes', 'Chery',];
  List<String> productUnit = ['KG', 'Dozen', 'KG', 'KG', 'KG',];
  List<int> productPrice = [10, 20, 30, 40, 50];
  List<String> productImage = [
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://image.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-260nw-1722111529.jpg',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',

  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart', style: TextStyle(
            color: primaryColor,
          ),),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: productName.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage(productImage[index].toString(),),
                                ),
                                SizedBox(width: 16,),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(productName[index].toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      Text("${productUnit[index]}  \$${productPrice[index]}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                          onTap: (){},
                                          child: Container(
                                            height: 30, width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text('Add to cart', style: TextStyle(
                                                color: Colors.white,
                                              ),),
                                            ),
                                          ),
                                        ),
                                      )

                                      //Text("Add to cart")),
                                      //IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
                                    ],
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}



