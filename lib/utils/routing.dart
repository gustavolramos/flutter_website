import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_website/pages/home/home_page.dart';
import 'package:my_first_website/pages/projects/projects_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'projects',
          builder: (BuildContext context, GoRouterState state) {
            return const ProjectsPage();
          },
        ),
      ],
    ),
  ],
);