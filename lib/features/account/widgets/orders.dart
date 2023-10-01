import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List tempList = [
    'https://plus.unsplash.com/premium_photo-1670863088251-500151f2117b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8b3JkZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    'https://plus.unsplash.com/premium_photo-1670863088251-500151f2117b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8b3JkZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    'https://plus.unsplash.com/premium_photo-1670863088251-500151f2117b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8b3JkZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    'https://plus.unsplash.com/premium_photo-1670863088251-500151f2117b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8b3JkZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    'https://plus.unsplash.com/premium_photo-1670863088251-500151f2117b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8b3JkZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See All',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tempList.length,
            itemBuilder: ((context, index) {
              return SingleProduct(
                img: tempList[index],
              );
            }),
          ),
        ),
      ],
    );
  }
}
