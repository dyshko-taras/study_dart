// ignore: prefer_expression_function_bodies
List<int> productArray(List<int> nums) => List.generate(
      nums.length,
      (int i) => nums.reduce((value, element) => value * element) ~/ nums[i],
    );