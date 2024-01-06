import 'package:flutter/material.dart';{{#isBloc}}
import 'package:{{{fullPath}}}/bloc/bloc.dart';{{/isBloc}}{{#isCubit}}
import 'package:{{{fullPath}}}/cubit/cubit.dart';{{/isCubit}}{{#isProvider}}
import 'package:{{{fullPath}}}/provider/provider.dart';{{/isProvider}}
import 'package:{{{fullPath}}}/widgets/{{feature_name.snakeCase()}}_body.dart';
import 'package:auto_route/auto_route.dart';

/// A description for {{feature_name.pascalCase()}}Screen
@RoutePage()
class {{feature_name.pascalCase()}}Screen extends StatelessWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});


{{#isBloc}}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Bloc(),
      child: const Scaffold(
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  } {{/isBloc}}{{#isCubit}}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Cubit(),
      child: const Scaffold(
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  } {{/isCubit}} {{#isProvider}}
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => {{feature_name.pascalCase()}}Notifier(),
      child: const Scaffold(
        body: {{feature_name.pascalCase()}}View(),
      ),
    );
  } {{/isProvider}} {{#isRiverpod}}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: {{feature_name.pascalCase()}}View(),
    );
  } {{/isRiverpod}} {{#isNone}}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: {{feature_name.pascalCase()}}View(),
    );
  } {{/isNone}}
}

/// Displays the Body of {{feature_name.pascalCase()}}View
class {{feature_name.pascalCase()}}View extends StatelessWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return const {{feature_name.pascalCase()}}Body();
  }
}
