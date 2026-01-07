// ignore: prefer_expression_function_bodies
List<int> productArray(List<int> nums) => List.generate(
      nums.length,
      (int i) => nums.reduce((value, element) => value * element) ~/ nums[i],
    );

// List<int> productArray(List<int> nums) {
//   return List.generate(nums.length,
//       (int i) => nums.reduce((value, element) => value * element) ~/ nums[i]);
//   // List<int> result = [];
//   // for (int i = 0; i < nums.length; i++) {
//   //   result.add(nums.reduce((value, element) => value * element) ~/ nums[i]);
//   // }
//   // dev.log(result.toString());
//   // return result;
// }
