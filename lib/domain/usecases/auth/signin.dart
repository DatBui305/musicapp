import 'package:dartz/dartz.dart';
import 'package:spotifycleanarchitecture/core/usecase/usecase.dart';
import 'package:spotifycleanarchitecture/data/models/auth/create_user_req.dart';
import 'package:spotifycleanarchitecture/data/models/auth/signin_user_req.dart';
import 'package:spotifycleanarchitecture/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return s1<AuthRepository>().signin(params!);
  }
}
