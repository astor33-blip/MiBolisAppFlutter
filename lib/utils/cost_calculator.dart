import '../models/product.dart';
import '../models/supply.dart';

/// Calcula el costo de producción de un producto para [units] unidades.
double calculateProductionCost(
    Product product, List<Supply> allSupplies, int units) {
  double total = 0.0;
  for (var item in product.recipe) {
    final supply = allSupplies.firstWhere(
      (s) => s.name == item.supplyName,
      orElse: () => Supply(name: item.supplyName, unitCost: 0.0, quantity: 0),
    );
    total += supply.unitCost * item.amount * units;
  }
  return total;
}
