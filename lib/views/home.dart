// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_finance/core/theme_config.dart';

import 'package:personal_finance/stores/navigation/navigation_store.dart';
import 'package:personal_finance/views/dashboard/dashboard_page.dart';

class Home extends StatefulWidget {
  final NavigationStore navigationStore;

  const Home({
    super.key,
    required this.navigationStore,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NavigationStore get navigationStore => widget.navigationStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith((state) {
            return const TextStyle(color: Colors.white);
          }),
        ),
        child: Observer(builder: (_) {
          return NavigationBar(
            onDestinationSelected: navigationStore.setCurrentIndex,
            elevation: 2,
            backgroundColor: ThemeConfig.primaryColor,
            indicatorColor: ThemeConfig.secondaryColor,
            selectedIndex: navigationStore.currentIndex,
            destinations: navigationsDestinations(),
          );
        }),
      ),
      body: Observer(builder: (_) {
        switch (navigationStore.currentIndex) {
          case 0:
            return DashboardPage(
              dashboardController: GetIt.I.get(),
            );
          // case 1:
          //   return FaturamentoPage(
          //     meliaccountStore: GetIt.I.get(),
          //     financeiroController: GetIt.I.get(),
          //   );
          // case 2:
          //   return QuestionPage(
          //     meliaccountStore: GetIt.I.get(),
          //     questionController: GetIt.I.get(),
          //   );
          default:
            return DashboardPage(
              dashboardController: GetIt.I.get(),
            );
        }
      }),
    );
  }

  navigationsDestinations() {
    return const <Widget>[
      NavigationDestination(
        icon: Icon(
          Icons.bar_chart,
          color: Colors.white,
        ),
        label: 'Dashboard',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.currency_exchange_rounded,
          color: Colors.white,
        ),
        label: 'Lançamentos',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        label: 'Configurações',
      ),
    ];
  }
}
