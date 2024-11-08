import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bersa Bíó',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bersa Bíó'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Joker Folie à Deux", style: TextStyle(fontSize: 25, color: Colors.black)),
            Text("Lúxus salur - Bersa Bío", style: TextStyle(fontSize: 20, color: Colors.black)),
            Text("Sýningartímar - KL 20:00, KL 22:30", style: TextStyle(fontSize: 15, color: Colors.black)),
            Image.asset('Joker_Folie_aa_Deux-920647444-large.jpg', height: 146, width: 99),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TicketUnavailableScreen()),
                );
              },
              child: Text("Kaupa miða"),
            ),
            SizedBox(height: 50),
            Text("Smile 2", style: TextStyle(fontSize: 25, color: Colors.black)),
            Text("Salur 1 - Bersa Bío", style: TextStyle(fontSize: 20, color: Colors.black)),
            Text("Sýningartímar - KL 17:00, KL 20:00, KL 22:30", style: TextStyle(fontSize: 15, color: Colors.black)),
            Image.asset('MV5BYTg5OTMyMGMtYzMwNC00NDMyLWE0OGUtMTQ1ODcwM2FjOTM4XkEyXkFqcGc@._V1_.jpg', height: 146, width: 99),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TicketUnavailableScreen()),
                );
              },
              child: Text("Kaupa miða"),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketUnavailableScreen extends StatelessWidget {
  const TicketUnavailableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket Unavailable"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Joker_Folie_aa_Deux-920647444-large.jpg',height: 146, width: 99), // Change this to your asset path
            SizedBox(height: 20),
            Text("Sorry, there are no tickets left.", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
