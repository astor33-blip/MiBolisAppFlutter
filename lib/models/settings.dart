import 'package:hive/hive.dart';
part 'settings.g.dart';

@HiveType(typeId: 4)
class Settings extends HiveObject {
  @HiveField(0)
  String language;

  @HiveField(1)
  int threshold;

  Settings({this.language = 'Español', this.threshold = 5});
}
