part of 'cubit.dart';

@immutable
class {{name.pascalCase()}}State extends Equatable {
  // -- nested states -- //
  final BlocState<{{model.pascalCase()}}> {{methodName.camelCase()}};

  // --- state data --- //
  const {{name.pascalCase()}}State({
    required this.{{methodName.camelCase()}}
  });

  {{name.pascalCase()}}State.def()
  : // root-def_constructor
  {{methodName.camelCase()}} = BlocState();

  {{name.pascalCase()}}State copyWith({
    BlocState<{{model.pascalCase()}}>? {{methodName.camelCase()}},
  }) {
    return {{name.pascalCase()}}State(
      {{methodName.camelCase()}}: {{methodName.camelCase()}} ?? this.{{methodName.camelCase()}},
    );
  }

  @override
  List<Object?> get props => [
    {{methodName.camelCase()}},
  ];

}