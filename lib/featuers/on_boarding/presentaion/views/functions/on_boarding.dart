import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/sevices/service_locator.dart';

void onBoardingVisited(){
  getIt<CacheHelper>().saveData(
    key: 'isOnBoardingVisited',
    value: true,
  );
}