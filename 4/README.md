# Todo

Write a program that stores and prints todo items.

### How to complete this exercise

1. Use the branch you created in exercise 1. (If you skipped straight here, from the command line, run `git checkout -b my-full-name`)
2. In this directory, create a Ruby program file called `todo.rb`.
3. To complete a requirement, add the code which completes the requirement to this file.
3. Once you have saved the Ruby program file, commit your changes with git and push to this repo.
4. You will get feedback on your solution via email.

### How to use Terminal programs

This program runs directly in the Terminal. To start a Terminal program, run `ruby todo.rb`.

## Requirements

### Starting the program shows me a blank todo list

When I start the program, I see:

```
Your Todos:

You haven't added any todos yet.

What would you like to do? Type "add" to add a todo. Type "done" to complete a todo.
```

### I can add a todo

When I start the program, type `add` and press enter, I see:

```
What would you like your todo to say?
```

And I type the item I need to do, and press enter, I see:

```
Added todo "<todo I just typed>".

Your Todos:

1. <todo I just typed>

What would you like to do? Type "add" to add a todo. Type "done" to complete a todo.
```

##### Useful links

- [How do I store numbered collections of items?]()

### I can complete a todo

When I start the program, add a todo, and then type `done` and press enter, I see:

```
Please enter the ID of your todo.
```

And I type the ID of the todo I want to complete, and press enter, I see:

```
Deleted todo "<todo I just completed>".

Your Todos:

You haven't added any todos yet.

What would you like to do? Type "add" to add a todo. Type "done" to complete a todo.
```

##### Useful links

- [How do I look up elements in an array?]()

### I can add todos in batches

When I start the program, type `add` and press enter, and I type

```
Wash the car; Walk the dog; Buff the chainmail
```

And press enter, I see:

```
Added todos "Wash the car", "Walk the dog", and "Buff the chainmail".

Your Todos:

1. Wash the car
2. Walk the dog
3. Buff the chainmail

What would you like to do? Type "add" to add a todo. Type "done" to complete a todo.
```

##### Useful links

- [How to I convert bits of strings into an array of strings?]()

### Adding the time created to Todos

When I store a todo, it stores the time the todo was created next to the todo, like this:

```
1. Wash the car (created 20th August 2019)
```

##### Useful links

- [How do I get the time in Ruby?]()

### Permanently storing todos

Restarting the program doesn't lose the todos I created.

##### Useful links

- [How can I store data after a program has shut down?]()

## Next up

You can [go directly to the end-of-module project](./END_OF_MODULE.md).