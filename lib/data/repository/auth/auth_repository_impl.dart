import 'package:dartz/dartz.dart';
import 'package:spotifycleanarchitecture/data/models/auth/create_user_req.dart';
import 'package:spotifycleanarchitecture/data/models/auth/signin_user_req.dart';
import 'package:spotifycleanarchitecture/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';
import '../../sources/auth/auth_firebase_service.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await s1<AuthFirebaseService>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await s1<AuthFirebaseService>().signup(createUserReq);
  }
}
