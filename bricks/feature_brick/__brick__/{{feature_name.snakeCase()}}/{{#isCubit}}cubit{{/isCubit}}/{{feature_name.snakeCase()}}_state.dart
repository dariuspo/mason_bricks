part of '{{feature_name.snakeCase()}}_cubit.dart';

/// {{feature_name.pascalCase()}}State description
@immutable
@CopyWith(copyWithNull: true)
class {{feature_name.pascalCase()}}State{{#use_equatable}} extends Equatable{{/use_equatable}} {
  const {{feature_name.pascalCase()}}State({
    this.blocState = BlocState.initial,
    this.message = '',
    this.data = '',
  });

  /// A description for customProperty
final BlocState blocState;
final String message;
final String data;
{{#use_equatable}}
  @override
  List<Object?> get props => [blocState, message, data];
{{/use_equatable}}

}
