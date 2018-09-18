# Introduction

The repository contains the ruby array programs with their respective test cases.

# Problem 1

* Given an array of integers, return indices of the two numbers such that they add up to a specific target. You may assume that each input would have exactly one solution, and you may not use the same element twice.
example: Given nums = [2, 7, 11, 15],
target = 9, because nums[0] + nums[1] = 2 + 7 = 9 Return [0, 1].

# Solution

* Consider the algorithmic solution for the problem:

1. Check the length of the array, return false if the length is less than equal to one AND target is nil.

2. Initialize a blank hash and start iteration over the array

3. Verify whether the element of the array(first iteration) is present as a key in the hash.

4. if the value is present, return the hash value using key and current of an index

5. else take the difference of target and element i.e. (difference = target value - element)

6. Make difference as key in the hash pointing to the current index of the array

7. Repeat steps 2 to 6 until the match is found and iteration ends.

In order to execute the test cases run the command from the directory

rspec spec/lib/calculate_index_spec.rb --format documentation

# Problem 2

* Write a function that will flatten an array of arbitrarily nested arrays of integers into a flat array of integers.
e.g. [[1,2,[3]],4] → [1,2,3,4].


# Solution

* Consider the algorithmic solution for the problem:

1. Start iteration over the array,

2. Check if an element is array or not

3. If the element is an array, functions calls itself (recursively) until no nested array (elements) are found in the list.

4. As a result, the nested array elements are pushed into the resulting array.

5. If the size of both original and resultant array are equal, original array is returned as there were no nested array elements.

In order to execute the test cases run the command from the directory

rspec spec/lib/flatten_spec.rb --format documentation


# Setup

* This covers the necessary steps to get the application up and running.

1. Take a clone from the github url

2. Run 'bundle' command within the repository inorder to install all the gems (packages) i.e. rspec.

3. Execute the testcases by running

rspec spec/lib
