import 'package:get_it/get_it.dart';
import 'package:spotifycleanarchitecture/data/repository/auth/auth_repository_impl.dart';
import 'package:spotifycleanarchitecture/data/sources/auth/auth_firebase_service.dart';
import 'package:spotifycleanarchitecture/domain/usecases/auth/signin.dart';
import 'package:spotifycleanarchitecture/domain/usecases/auth/signup.dart';

import 'domain/repository/auth/auth.dart';

final s1 = GetIt.instance;
Future<void> initilizeDependencies() async {
  s1.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImp(),
  );
  s1.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
  s1.registerSingleton<SignupUseCase>(
    SignupUseCase(),
  );
  s1.registerSingleton<SigninUseCase>(
    SigninUseCase(),
  );
}
