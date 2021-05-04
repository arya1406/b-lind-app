import 'package:b_lind/scraper_bmkg.dart' as hacker_news_scraper;

void main(List<String> arguments) async {
  print(await hacker_news_scraper.initiate());
}
