// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i5;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'infrastructure/auth/database_auth_facade.dart' as _i4;
import 'infrastructure/core/database_injectable_module.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final databaseInjectableModule = _$DatabaseInjectableModule();
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.DatabaseAuthFacade(get<_i4.DatabaseAuth>()));
  gh.lazySingleton<_i5.RegisterWithEmailAndPasswordPressed>(
      () => databaseInjectableModule.registerWithEmailandPassword);
  gh.factory<_i5.SignInFormBloc>(
      () => _i5.SignInFormBloc(get<_i3.IAuthFacade>()));
  return get;
}

class _$DatabaseInjectableModule extends _i6.DatabaseInjectableModule {}
