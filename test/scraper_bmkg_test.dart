import 'package:b_lind/scraper_bmkg.dart' as scraper_bmkg;

void main(List<String> arguments) async {
  //await scraper_bmkg.udara();
  //await scraper_bmkg.gempa();
  print(await scraper_bmkg.cuaca());
}
