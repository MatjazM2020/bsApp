import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dobavnice_app/screens/register.dart';
import 'package:dobavnice_app/screens/doc_list.dart';
import 'package:dobavnice_app/screens/loading_screen.dart';


final GoRouter router = GoRouter(
  routes: <GoRoute>[   
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return LoadingScreen();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return Register();
      },
    ),
    
    GoRoute(
      path: '/document',
      builder: (BuildContext context, GoRouterState state) {
        List<ClaimDocumentsResponse> docls =
            state.extra as List<ClaimDocumentsResponse>;
        return DocumentList(
        //  docls: docls,
        );
      },
    ),
  ],
);
