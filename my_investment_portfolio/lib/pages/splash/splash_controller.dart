import 'package:my_investment_portfolio/App/routes.dart';
import 'package:my_investment_portfolio/domain/user/services/sign_in_service.dart';

class SplashController {
  final SignInService signInService = SignInService();

  init() {
    if (signInService.isAuthenticated) {
      NavigatorApp.pushNamed("/home");
    } else {
      NavigatorApp.pushNamed("/login");
    }
  }
}
