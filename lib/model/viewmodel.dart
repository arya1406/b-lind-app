import 'udara_db.dart';
import 'package:b_lind/scraper_bmkg.dart';
import 'hive_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final HiveService hiveService = HiveService();
  final UdaraService udaraService = UdaraService();

  List<dynamic> _dataUdaraList = [];
  List<dynamic> get dataUdaraList => _dataUdaraList;
  String _teks = "";
  String get teks => _teks;

  final String url =
      'https://www.bmkg.go.id/kualitas-udara/informasi-partikulat-pm10.bmkg';

  getData() async {
    print('entered get Data()');
    _teks = "fetching data";
    bool exists = await hiveService.isExists(boxName: "UdaraTable");
    if (exists) {
      _teks = "Fetching from Hive";
      print("getting data from Hive");
      setBusy(false);
    } else {
      _teks = "Fetching data from Hive";
      print("Getting dta from API");
      setBusy(true);
      var result = await udaraService.udara();
      (result as List).map((e) {
        KualitasUdara udara = KualitasUdara(wilayah: )
      });
    }
  }
}
