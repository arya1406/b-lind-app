import 'package:b_lind/scraper_bmkg.dart';
import 'package:b_lind/model/viewmodel.dart';

void jalan(List<String> arguments) async {
  //await scraper_bmkg.udara();
  //await scraper_bmkg.gempa();
  //print(await UdaraService().udara());
  print(await HomeViewModel().getData());
}
