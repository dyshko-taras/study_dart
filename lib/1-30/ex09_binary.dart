//#9 Binary
class GameOfLife {
  GameOfLife(this.input);

  final List<List<int>> input;
  final List<List<int>> output = <List<int>>[];

  static const int dead = 0;
  static const int alive = 1;

  void tick() {
    for (int i = 0; i < input.length; i++) {
      final List<int> row = <int>[];
      for (int j = 0; j < input[i].length; j++) {
        final int neighbors = _sumOfNeighbors(input, i, j);
        if (input[i][j] == alive && neighbors < 2) {
          row.add(dead);
        } else if (input[i][j] == alive && neighbors > 3) {
          row.add(dead);
        } else if (input[i][j] == dead && neighbors == 3) {
          row.add(alive);
        } else {
          row.add(input[i][j]);
        }
      }
      output.add(row);
    }
  }

  List<List<int>> matrix() => output;

  int _sumOfNeighbors(List<List<int>> matrix, int row, int col) {
    int sum = 0;
    final int numRows = matrix.length;
    final int numCols = matrix[0].length;

    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        if (i == 0 && j == 0) {
          continue;
        }

        final int newRow = row + i;
        final int newCol = col + j;

        if (newRow >= 0 &&
            newRow < numRows &&
            newCol >= 0 &&
            newCol < numCols) {
          sum += matrix[newRow][newCol];
        }
      }
    }

    return sum;
  }
}
