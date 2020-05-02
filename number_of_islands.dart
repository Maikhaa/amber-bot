int numberOfIslands(List grid) {
  var count = 0;

  for (var i = 0; i < grid.length; i++) {
    for (var j = 0; j < grid[i].length; j++) {
      if (grid[i][j] == '1') {
        count += sinkIsland(grid, i, j);
      }
    }
  }

  return count;
}

int sinkIsland(List grid, int i, int j) {
  if (grid[i][j] == '1') {
    grid[i][j] = '0';
  } else {
    return 0;
  }

  if (i + 1 < grid.length) sinkIsland(grid, i + 1, j);
  if (i - 1 >= 0) sinkIsland(grid, i - 1, j);
  if (j + 1 < grid[i].length) sinkIsland(grid, i, j + 1);
  if (j - 1 >= 0) sinkIsland(grid, i, j - 1);
  
  return 1;
}

void main() {
  print(numberOfIslands([
    ["1", "1", "1", "1", "0"],
    ["1", "1", "0", "1", "0"],
    ["0", "0", "0", "0", "0"],
    ["1", "1", "0", "1", "0"]
  ]));
}
