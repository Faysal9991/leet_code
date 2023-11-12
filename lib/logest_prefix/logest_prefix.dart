// Write a function to find the longest common prefix string amongst an array of strings.
//
// If there is no common prefix, return an empty string "".
//
//
//
// Example 1:
//
// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Example 2:
//
// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.

//TODO: Here is the solution

class Solution {
  String longestCommonPrefix(List<String> strs) {
    String commonPrefix = strs.first;
    for (final word in strs) {
      while (!word.startsWith(commonPrefix)) {
        commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
      }
    }
    return commonPrefix;
  }
}