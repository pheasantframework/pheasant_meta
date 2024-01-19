import 'package:pheasant_meta/src/meta/basic/objects.dart';

// TODO: Documentation for the following

class BuildAnnotationObject extends AnnotationObject {


  const BuildAnnotationObject() : super(info: 'This is a metadata object used in Pheasant Generated Files');

}

class Prop extends BuildAnnotationObject {
  final defaultValue;
  
  final bool optional;

  const Prop({this.defaultValue, this.optional = false});
}

class _NoProp {
  const _NoProp();
}

typedef PheasantAnnotation = BuildAnnotationObject;

const prop = Prop(defaultValue: null, optional: true);

const noprop = _NoProp();