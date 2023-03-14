// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // StackedNavigatorGenerator
// // **************************************************************************

// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:final_hackathon/views/role.dart' as _i4;
// import 'package:final_hackathon/views/signup_view.dart' as _i6;
// import 'package:final_hackathon/views/Splash_Screen.dart' as _i2;
// import 'package:final_hackathon/views/user_login.dart' as _i5;
// import 'package:final_hackathon/views/Welcome.dart' as _i3;
// import 'package:flutter/material.dart' as _i7;
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart' as _i1;
// import 'package:stacked_services/stacked_services.dart' as _i8;

// class Routes {
//   static const splashScreen = '/splash-screen';

//   static const welcome = '/Welcome';

//   static const role = '/Role';

//   static const userLogin = '/user-login';

//   static const signUp = '/sign-up';

//   static const all = <String>{
//     splashScreen,
//     welcome,
//     role,
//     userLogin,
//     signUp,
//   };
// }

// class StackedRouter extends _i1.RouterBase {
//   final _routes = <_i1.RouteDef>[
//     _i1.RouteDef(
//       Routes.splashScreen,
//       page: _i2.SplashScreen,
//     ),
//     _i1.RouteDef(
//       Routes.welcome,
//       page: _i3.Welcome,
//     ),
//     _i1.RouteDef(
//       Routes.role,
//       page: _i4.Role,
//     ),
//     _i1.RouteDef(
//       Routes.userLogin,
//       page: _i5.UserLogin,
//     ),
//     _i1.RouteDef(
//       Routes.signUp,
//       page: _i6.SignUp,
//     ),
//   ];

//   final _pagesMap = <Type, _i1.StackedRouteFactory>{
//     _i2.SplashScreen: (data) {
//       return _i7.MaterialPageRoute<dynamic>(
//         builder: (context) => const _i2.SplashScreen(),
//         settings: data,
//         maintainState: false,
//       );
//     },
//     _i3.Welcome: (data) {
//       return _i7.MaterialPageRoute<dynamic>(
//         builder: (context) => const _i3.Welcome(),
//         settings: data,
//         maintainState: false,
//       );
//     },
//     _i4.Role: (data) {
//       return _i7.MaterialPageRoute<dynamic>(
//         builder: (context) => const _i4.Role(),
//         settings: data,
//         maintainState: false,
//       );
//     },
//     _i5.UserLogin: (data) {
//       return _i7.MaterialPageRoute<dynamic>(
//         builder: (context) => const _i5.UserLogin(),
//         settings: data,
//         maintainState: false,
//       );
//     },
//     _i6.SignUp: (data) {
//       return _i7.MaterialPageRoute<dynamic>(
//         builder: (context) => const _i6.SignUp(),
//         settings: data,
//         maintainState: false,
//       );
//     },
//   };

//   @override
//   List<_i1.RouteDef> get routes => _routes;
//   @override
//   Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
// }

// extension NavigatorStateExtension on _i8.NavigationService {
//   Future<dynamic> navigateToSplashScreen([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return navigateTo<dynamic>(Routes.splashScreen,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> navigateToWelcome([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return navigateTo<dynamic>(Routes.welcome,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> navigateToRole([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return navigateTo<dynamic>(Routes.role,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> navigateToUserLogin([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return navigateTo<dynamic>(Routes.userLogin,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> navigateToSignUp([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return navigateTo<dynamic>(Routes.signUp,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> replaceWithSplashScreen([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return replaceWith<dynamic>(Routes.splashScreen,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> replaceWithWelcome([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return replaceWith<dynamic>(Routes.welcome,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> replaceWithRole([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return replaceWith<dynamic>(Routes.role,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> replaceWithUserLogin([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return replaceWith<dynamic>(Routes.userLogin,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }

//   Future<dynamic> replaceWithSignUp([
//     int? routerId,
//     bool preventDuplicates = true,
//     Map<String, String>? parameters,
//     Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
//         transition,
//   ]) async {
//     return replaceWith<dynamic>(Routes.signUp,
//         id: routerId,
//         preventDuplicates: preventDuplicates,
//         parameters: parameters,
//         transition: transition);
//   }
// }
