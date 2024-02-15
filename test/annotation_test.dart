import 'package:pheasant_meta/pheasant_meta.dart';
import 'package:test/test.dart';

void main() {
  group("Tests for metadata used in packages", () {
    test('Constant Metadata Tests', () => null);
    test('Class Metadata Tests', () {
      final fromObject = From('1.0.0');
      expect(fromObject.info, equals("This functionality takes effect from the given version."));
    });
  });
  group("Tests for metadata used in build files", () {
    test('"prop" Metadata', () {
      final testprop = prop;

      expect(testprop.defaultTo, isNull);
      expect(testprop.optional, isFalse);
    });

    test('"Prop" Metadata', () {
      final testprop = Prop(defaultTo: 8, optional: true);

      expect(testprop.defaultTo, isNotNull);
      assert(testprop.defaultTo is int);
      assert(testprop.defaultTo == 8);
      
      expect(testprop.optional, isTrue);
    });
  });
}
