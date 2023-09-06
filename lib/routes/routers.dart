import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/screens/document_detail_view.dart';
import 'package:dobavnice_app/screens/packet_detail_view.dart';
import 'package:dobavnice_app/screens/scan_screen.dart';
import 'package:dobavnice_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      final documentListCubit = context.read<DocumentListCubit>();
      List<ClaimDocumentsResponse> docls =
          state.extra as List<ClaimDocumentsResponse>;
      documentListCubit.setDocumentList(docls);
      return DocumentList(docls: docls);
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
        return DocumentDetailView();
      },
    ),
    GoRoute(
      path: '/packetDetailView',
      builder: (BuildContext context, GoRouterState state) {
        return PacketDetailview();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return SettingsScreen();
      },
    ),
  ],
);
