# Calculator B

Make a simple calculator, again!

### How to complete this exercise

1. Use the branch you created in exercise 1. (If you skipped straight here, from the command line, run `git checkout -b my-full-name`)
2. In this directory, create a Ruby program file called `calculator.rb`.
3. To complete a requirement, add the code which completes the requirement to this file.
3. Once you have saved the Ruby program file, commit your changes with git and push to this repo.
4. You will get feedback on your solution via email.

### Testing your progress

At any time, you can run `./test` from the Terminal to run some tests against your code. The tests expect your program to live in the exact directory it is meant to!

### How to use IRB

This program should run in `irb`. IRB is an interactive Ruby environment. To start IRB, write `irb` in any terminal window.

## Requirements

### Starting the program in IRB

I can start the program by writing:

`irb`

Then 

`require "./calculator"`

### Subtracting with nothing gives zero

Once I have started the program, I can write:

```
subtract
```

And I see:

```
0
```

### Subtracting a single numeral number takes it from zero

Once I have started the program, I can write:

```
subtract(2)
```

And I see:

```
-2
```

### Subtracting two numeral numbers takes the first from the second

Once I have started the program, I can write:

```
subtract(2, 3)
```

And I see:

```
1
```

### Subtracting two numeral or non-numeral numbers takes the first from the second

Once I have started the program, I can write:

```
subtract(TWO, THREE)
```

And I see: 

```
1
```

## Next up

You can [improve your skills in this module](../1C) or you can [go directly to the end-of-module project](../1/END_OF_MODULE.md).
