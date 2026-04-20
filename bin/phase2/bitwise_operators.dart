// Operators that perform bitwase AND, OR, XOR and bitwise shifts
void main() {
  print(5 & 3); // AND
  /**
   *     0101
   * AND 0011
   *     ‾‾‾‾
   *     0001₂ = 1₁₀
   */
  print(5 | 3); // OR
  print(5 ^ 3); // XOR
  print(~5); // Bitwise Complement
  // 0101 -> 1010
  print(3 << 1); // Shift left
  // 0011 -> 0110
  print(8 >> 1); // Shift right
  // 1000 -> 0100
  print(8 >>> 1); // Unsigned Shift right
  // The first sign bit (1) for negative numbers is untouched
}