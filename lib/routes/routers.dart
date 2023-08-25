import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/screens/document_detail_view.dart';
import 'package:dobavnice_app/screens/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dobavnice_app/screens/register.dart';
import 'package:dobavnice_app/screens/document_list.dart';
import 'package:dobavnice_app/screens/loading_screen.dart';


final GoRouter router = GoRouter(
  routes: <GoRoute>[   
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoadingScreen();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const Register();
      },
    ),
    GoRoute(
      path: '/document',
      builder: (BuildContext context, GoRouterState state) {
        List<ClaimDocumentsResponse> docls =
            state.extra as List<ClaimDocumentsResponse>;
        return DocumentList(
          docls: docls,
        );
      },
    ),
    GoRoute(
      path: '/scan',
      builder: (BuildContext context, GoRouterState state) {
        return const ScanScreen();
      },
    ),
    GoRoute(path: '/documentDetailView',
    builder: (BuildContext context, GoRouterState state) {
        return const DocumentDetailView();
      },
    )
  ],
);
