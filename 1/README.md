# Calculator

Make a simple calculator.

### How to complete this exercise

1. Make a new branch with your name. (From the command line, run `git checkout -b my-full-name`)
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

##### Useful links

- [What does `require` do?](https://www.loom.com/share/63c4312a811f4704b88fce0bdcd3bc50)
- [Why do error messages have SO MANY LINES!?](https://www.loom.com/share/b17b50f37c5f43788e3c91113aba1f5c)

### Adding with nothing

Once I have started the program, I can write:

```
add
```

And I see:

```
0
```

##### Useful links

- [Writing Ruby functions](https://www.loom.com/share/aef99200116241a481a49e4532dba283)

### Adding a numeral number

Once I have started the program, I can write:

```
add(2)
```

And I see:

```
2
```

##### Useful links

- [Writing Ruby functions with parameters](https://www.loom.com/share/368863e6621442799ea0e823fa9c1b6e)
- [Making parameters optional](https://www.loom.com/share/a6f719cd4e3748828b2355e33c736bc5)

### Adding two numeral numbers

Once I have started the program, I can write:

```
add(2, 3)
```

And I see:

```
5
```

### Adding two numeral or non-numeral numbers

Once I have started the program, I can write:

```
add(TWO, THREE)
```

And I see: 

```
5
```

##### Useful links

- [Ruby Constants](https://www.loom.com/share/271203c75ef8402e9632b118da36f85b)