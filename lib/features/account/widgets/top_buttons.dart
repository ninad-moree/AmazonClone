import 'package:flutter/material.dart';

import 'account_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Your Orders',
              onPress: () {},
            ),
            AccountButton(
              text: 'Turn Sellers',
              onPress: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: 'Your Wishlist',
              onPress: () {},
            ),
            AccountButton(
              text: 'Log Out',
              onPress: () {},
            ),
          ],
        ),
      ],
    );
  }
}
