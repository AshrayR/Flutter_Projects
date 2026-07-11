import 'package:app_9_sneaker_app/components/shoe_tile.dart';
import 'package:app_9_sneaker_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 10,),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Shoe shoe = Shoe(
                name: 'Air Jordan',
                price: '240', 
                imagePath: 'lib/images/massimo-p-nKysek_qt8w-unsplash.jpg', 
                description: 'Cool Shoe'
              );
              return ShoeTile(
                shoe: shoe,
              );
            }
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Divider(
            color: Colors.white,
            
          ),
        ),
      ],
    );
  }
}