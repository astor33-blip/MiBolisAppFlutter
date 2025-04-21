import 'package:hive/hive.dart';
part 'product.g.dart';

@HiveType(typeId: 0)
class Product extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  double price;

  @HiveField(2)
  int quantity;

  @HiveField(3)
  double productionCost;

  @HiveField(4)
  String? photoPath;

  @HiveField(5)
  List<RecipeItem> recipe;

  Product({
    required this.name,
    required this.price,
    required this.quantity,
    this.productionCost = 0.0,
    this.photoPath,
    this.recipe = const [],
  });
}

@HiveType(typeId: 1)
class RecipeItem extends HiveObject {
  @HiveField(0)
  String supplyName;

  @HiveField(1)
  double amount;

  RecipeItem({required this.supplyName, required this.amount});
}
