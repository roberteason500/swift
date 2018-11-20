public class ArrayDeclTests: PrettyPrintTestCase {
  public func testBasicArrays() {
    let input =
      """
      let a = [1, 2, 3]
      let a: [Bool] = [false, true, true, false]
      let a: [String] = ["One", "Two", "Three", "Four"]
      let a: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]
      let a: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven",]
      """

    let expected =
      """
      let a = [1, 2, 3]
      let a: [Bool] = [false, true, true, false]
      let a: [String] = [
        "One", "Two", "Three", "Four"
      ]
      let a: [String] = [
        "One",
        "Two",
        "Three",
        "Four",
        "Five",
        "Six",
        "Seven"
      ]
      let a: [String] = [
        "One",
        "Two",
        "Three",
        "Four",
        "Five",
        "Six",
        "Seven",
      ]

      """

    assertPrettyPrintEqual(input: input, expected: expected, linelength: 45)
  }
}
