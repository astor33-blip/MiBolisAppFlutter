import 'package:hive/hive.dart';
part 'supply.g.dart';

@HiveType(typeId: 2)
class Supply extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  double unitCost;

  @HiveField(2)
  double quantity;

  Supply({
    required this.name,
    required this.unitCost,
    required this.quantity,
  });
}
