import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _bidAmount = 0;

  void _increaseBid() {
    setState(() {
      _bidAmount += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bidding Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Maximum Bid:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "\$$_bidAmount",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increaseBid,
              child: const Text("Increase Bid by \$50"),
            ),
          ],
        ),
      ),
    );
  }
}
