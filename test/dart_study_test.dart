import 'package:dart_study/exercism_exercises.dart';
import 'package:test/test.dart';

void main() {
    final atbashCipher = AtbashCipher();
  group('AtbashCipher', () {
    group('encode', () {
      test('encode yes', () {
        final result = atbashCipher.encode("yes");
        expect(result, equals("bvh"));
      });
      test('encode no', () {
        final result = atbashCipher.encode("no");
        expect(result, equals("ml"));
      });
      test('encode OMG', () {
        final result = atbashCipher.encode("OMG");
        expect(result, equals("lnt"));
      });
      test('encode spaces', () {
        final result = atbashCipher.encode("O M G");
        expect(result, equals("lnt"));
      });
      test('encode mindblowingly', () {
        final result = atbashCipher.encode("mindblowingly");
        expect(result, equals("nrmwy oldrm tob"));
      });
      test('encode numbers', () {
        final result = atbashCipher.encode("Testing,1 2 3, testing.");
        expect(result, equals("gvhgr mt123 gvhgr mt"));
      });
      test('encode deep thought', () {
        final result = atbashCipher.encode("Truth is fiction.");
        expect(result, equals("gifgs rhurx grlm"));
      });
      test('encode all the letters', () {
        final result =
            atbashCipher.encode("The quick brown fox jumps over the lazy dog.");
        expect(result, equals("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"));
      });
    });
    group('decode', () {
      test('decode exercism', () {
        final result = atbashCipher.decode("vcvix rhn");
        expect(result, equals("exercism"));
      });
      test('decode a sentence', () {
        final result =
            atbashCipher.decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v");
        expect(result, equals("anobstacleisoftenasteppingstone"));
      });
      test('decode numbers', () {
        final result = atbashCipher.decode("gvhgr mt123 gvhgr mt");
        expect(result, equals("testing123testing"));
      });
      test('decode all the letters', () {
        final result =
            atbashCipher.decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt");
        expect(result, equals("thequickbrownfoxjumpsoverthelazydog"));
      });
      test('decode with too many spaces', () {
        final result = atbashCipher.decode("vc vix    r hn");
        expect(result, equals("exercism"));
      });
      test('decode with no spaces', () {
        final result = atbashCipher.decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv");
        expect(result, equals("anobstacleisoftenasteppingstone"));
      });
    });
  });
}
