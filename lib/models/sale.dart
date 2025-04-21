import 'package:hive/hive.dart';
part 'sale.g.dart';

@HiveType(typeId: 3)
class Sale extends HiveObject {
  @HiveField(0)
  String productName;

  @HiveField(1)
  int quantity;

  @HiveField(2)
  double unitPrice;

  @HiveField(3)
  double total;

  @HiveField(4)
  DateTime date;

  Sale({
    required this.productName,
    required this.quantity,
    required this.unitPrice,
    required this.total,
    DateTime? date,
  }) : date = date ?? DateTime.now();
}
