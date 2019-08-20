# Fizzbuzz

Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

### How to complete this exercise

1. Use the branch you created in exercise 1. (If you skipped straight here, from the command line, run `git checkout -b my-full-name`)
2. In this directory, create a Ruby program file called `fizzbuzz.rb`.
3. To complete a requirement, add the code which completes the requirement to this file.
3. Once you have saved the Ruby program file, commit your changes with git and push to this repo.
4. You will get feedback on your solution via email.

### How to use Terminal programs

Unlike exercise 1, this program does not run in IRB. Instead, it runs directly in the Terminal. To start a Terminal program, run `ruby fizzbuzz.rb`.

## Requirements

### Starting the program in the Terminal

I can start the program by writing:

`ruby fizzbuzz.rb`

### Returning 1

When I run the program, I see:

```
1
```

### Returning 1 and 2

When I run the program, I see:

```
1
2
```

### Returning any length of numbers

When I run the program, I see:

```
What should the start number be?
```

And I enter `1` and press enter, I see:

```
What should the end number be?
```

And I enter `10` and press enter, I see:

```
1
2
3
4
5
6
7
8
9
10
```

##### Useful links

- [How do I generate lists of numbers based on a range?]()

### Returning the first "Fizz"

When I run the program with a start number of `1` and an end number of `3`, I see:

```
1
2
Fizz
```

- [How do I loop over a list of numbers?]()
- [How do I make functions do one thing sometimes, and another thing another time?](https://www.loom.com/share/19ea686cfc244427882688d69f6112ca)

### Returning "Fizz" on any multiple of 3

When I run the program, I see:

```
1
2
Fizz
4
5
Fizz
7
8
Fizz
10
```

> Extra constraint: the function must be no more than seven lines long.

### Returning "Buzz" on any multiple of 5

When I run the program, I see:

```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
```

> Extra constraint: the function must be no more than nine lines long.

### Returning "FizzBuzz" on any multiple of 3 and 5

When I run the program, I see:

```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
```

> Extra constraint: the function must be no more than eleven lines long.

### Controlling the flow with early returns

When I run the program, I see:

```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
```

> Extra constraint: the function must be no more than five lines long.

##### Useful links

- [How do I tidy up long conditional code?](https://www.loom.com/share/a23d49a015a646b881ef07047e1365b7)

## Next up

You can [go directly to the end-of-module project](./END_OF_MODULE.md).