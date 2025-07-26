import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/featuers/auth/data/auth_cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator(){
 getIt.registerSingleton<CacheHelper>(CacheHelper());
 getIt.registerSingleton<AuthCubit>(AuthCubit());
}