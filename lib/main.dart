import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/product.dart';
import 'models/supply.dart';
import 'models/sale.dart';
import 'models/settings.dart';
import 'screens/inventory_screen.dart';
import 'screens/login_screen.dart';
import 'screens/main_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(RecipeItemAdapter());
  Hive.registerAdapter(SupplyAdapter());
  Hive.registerAdapter(SaleAdapter());
  Hive.registerAdapter(SettingsAdapter());
  await Hive.openBox<Product>('products');
  await Hive.openBox<Supply>('supplies');
  await Hive.openBox<Sale>('sales');
  await Hive.openBox<Settings>('settings');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Bolis',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainMenuScreen(),
        '/inventory': (context) => const InventoryScreen(),
        // Add other routes accordingly
      },
    );
  }
}
