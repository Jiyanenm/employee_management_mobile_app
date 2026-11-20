
import 'package:material_ui/material_ui.dart';

import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/registration_screen.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String login = '/login';
  static const String registration = '/registration';
  static const String forgotPassword = '/forgot-password';
  static const String dashboard = '/dashboard';

  static Map<String, WidgetBuilder> get routes => {
        login: (context) => const LoginScreen(),
        registration: (context) => const RegistrationScreen(),
        forgotPassword: (context) => const ForgotPasswordScreen(),
        dashboard: (context) => const DashboardScreen(),
      };
}
