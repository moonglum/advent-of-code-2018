# Advent of Code

Here are my solutions to the [Advent of Code 2018](https://adventofcode.com).

## Day 1

The input is a list of positive and negative numbers. The task is to iterate
over them (when you reach the end of the list, you need to start at the
beginning again) and add the number to the current list of numbers. This
number is the current frequency. You need to find the first frequency that
appears twice. The start frequency is 0.

Example:
```
+3
+3
+4
-2
-4
```

The result is 10 (frequencies: 3, 6, 10, 8, 6, 9, 12, 16, 14, 10)

## Day 2, part 1

The input is a list of Strings. The task is to count the number that have a
string containing exactly two of any letter and then separately counting those
with exactly three of any letter. Then multiply those two counts together to
get a rudimentary checksum. This is the result.

Example:
```
abcdef
bababc
abbcde
abcccd
aabcdd
abcdee
ababab
```

We have four Strings with a letter appearing two times and three with a letter
appearing three times (Strings can count to both groups). Therefore the
checksum is: `4 * 3 = 12`.

## Day 2, part 2

The input is a list of Strings of equal length. For any combination of two
Strings, find their common characters. The output is the longest String of
common characters.

Example:
```
abcde
fghij
klmno
pqrst
fguij
axcye
wvxyz
```

`fghij` and `fguij` differ by the fewest characters, their common characters
are: `fgij`.
