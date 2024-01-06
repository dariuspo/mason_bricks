// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{{fullPath}}}/cubit/cubit.dart';

void main() {
  group('{{feature_name.pascalCase()}}Cubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          {{feature_name.pascalCase()}}Cubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for data', () {
      final {{feature_name.camelCase()}}Cubit = {{feature_name.pascalCase()}}Cubit();
      expect({{feature_name.camelCase()}}Cubit.state.data, equals(null));
    });

    blocTest<{{feature_name.pascalCase()}}Cubit, {{feature_name.pascalCase()}}State>(
      'method emits nothing',
      build: {{feature_name.pascalCase()}}Cubit.new,
      act: (cubit) => cubit.method(),
      expect: () => <{{feature_name.pascalCase()}}State>[],
    );
  });
}
