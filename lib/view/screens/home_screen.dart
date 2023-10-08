import 'package:flutter/material.dart';
import 'package:inspire_me/view/widgets/quotes_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const QuotesCard(
              auther: "Naqeeb",
              quote:
                  "Reloaded 1 of 691 libraries in 1,839ms (compile: 51 ms, reload: 831 ms, reassemble: 795 ms).",
            );
          }),
    );
  }
}
