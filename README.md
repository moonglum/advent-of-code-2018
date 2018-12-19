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
