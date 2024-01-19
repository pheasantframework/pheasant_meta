import 'objects.dart';

// TODO: Add documentation for new object.

/// Declares objects that are only supported in HTML5 Standard. These should therefore not be used outside a HTML5 interface.
const html5 = AnnotationObject(info: 'This object is only allowed in HTML5');

/// Declares objects that are not supported in HTML5 Standard. These should therefore not be used in a HTML5 interface.
/// The build system takes note of this and excludes all instances of the object this annotation is annotated to.
const nohtml5 = RestrictedAnnotation(info: 'This object is not allowed in HTML5');

/// Declares functions or objects that are not working, or are broken
const broken = RestrictedAnnotation(info: 'This object or function does not work');

const state = StateAnnotation(info: 'This object is under reactive state and should be watched');