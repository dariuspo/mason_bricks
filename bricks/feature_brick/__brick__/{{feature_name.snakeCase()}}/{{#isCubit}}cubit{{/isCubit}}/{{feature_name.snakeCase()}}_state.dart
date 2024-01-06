part of '{{feature_name.snakeCase()}}_cubit.dart';

/// {{feature_name.pascalCase()}}State description
@immutable
@CopyWith(copyWithNull: true)
class {{feature_name.pascalCase()}}State{{#use_equatable}} extends Equatable{{/use_equatable}} {
  const {{feature_name.pascalCase()}}State({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;
{{#use_equatable}}
  @override
  List<Object> get props => [customProperty];
{{/use_equatable}}

}
