//
//  Sort Color
//
//
//  Given an array, colors, which contains a combination
//  of the following three elements:
//  - 0 (representing red)
//  - 1 (representing white)
//  - 2 (representing blue)
//
//  Sort the array in place so that the elements of the same color
//  are adjacent, with the colors in the order of red, white,
//  and blue. To improve your problem-solving skills,
//  do not utilize the built-in sort function.
//
//  Constraints:
//  - 1 <= colors.length <= 10^3
//  - colors[i] can only contains 0s, 1s or 2s
//

func sortColors(colors: [Int]) -> [Int] {
  var result = colors
  var startIndex = 0
  var endIndex = result.count - 1
  var currentIndex = 0
  for _ in 0..<result.count {
    if result[currentIndex] == 0 {
      result.swapAt(startIndex, currentIndex)
      startIndex += 1
      currentIndex += 1
    } else if result[currentIndex] == 1 {
      currentIndex += 1
    } else {
      result.swapAt(currentIndex, endIndex)
      endIndex -= 1
    }
  }
  return result
}
