import 'package:dartz/dartz.dart';
import 'package:spotifycleanarchitecture/core/usecase/usecase.dart';
import 'package:spotifycleanarchitecture/data/models/auth/create_user_req.dart';
import 'package:spotifycleanarchitecture/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return s1<AuthRepository>().signup(params!);
  }
}
