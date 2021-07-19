import 'package:b_lind/scraper_bmkg.dart';
import 'package:b_lind/nlp_test.dart';
//mport 'package:b_lind/model/viewmodel.dart';

void main() async {
  //print(await UdaraService().udara());
  //print(await GempaService().gempa());
  print(await CuacaService().cuaca());
  //print(await ServiceNLP().nlp());
}
