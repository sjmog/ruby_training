# Tax Calculator 4

> You should build on your existing calculator that you completed in the end-of-module exercise for Exercises 1, 2, and 3.

The Government wants to improve the calculator your wrote for what rates to set for income tax, student loans, and national insurance.

The government would like to change how the program works by introducing a new type of user: an analyst.

The Government wants to use real-life user data to figure out what their actual tax rates should be. They want to write specific reports for each district they have on file.

You can find the input user data in the directory `./tax_data`. Each file is named with a datestamp, and is a "CSV" type file. That means that columns of data are separated by a comma, and each line of the file contains a new person.

### Requirements

When the program starts, the user should be presented with an option that says `"Greetings, citizen, administrator, or analyst. Which one are you? Please type citizen, administrator, or analyst."`

If the user enters `citizen`, they should be given the citizen program which calculates their take-home pay, as in exercise 3.

If the user enters `administrator`, they should be given the administrator program which calculates government revenue, as in exercise 3.

If the user enters `analyst`, they should instead be given a separate, new, analyst program.

The analyst should see: `"Please enter a file name for your input data."`

The analyst should enter the file name of one of the tax data files (for this requirement example, assume it is `20-08-19.csv`), and then see `"You uploaded <number of citizens in file> citizens with an average salary of <average salary of citizens in file>. What is the base rate of income tax (applicable from 0 to 20,000), entered as a percentage, e.g. '20'?""`

The analyst should then enter a number for the _percentage_ of the base rate of income tax, and then see `"You said the base rate would be <base rate>. What is the low rate of income tax (applicable from 20,001 to 40,000), entered as a percentage, e.g. '30'?"`

The analyst should then enter a number for the _percentage_ of the low rate of income tax, and then see `"You said the low rate would be <low rate>. What is the medium rate of income tax (applicable from 40,001 to 100,000), entered as a percentage, e.g. '40'?"`

The analyst should then enter a number for the _percentage_ of the medium rate of income tax, and then see `"You said the medium rate would be <medium rate>. What is the high rate of income tax (applicable from 100,001 upwards), entered as a percentage, e.g. '50'?"`

The analyst should then enter a number for the _percentage_ of the high rate of income tax, and then see `"You said the high rate would be <high rate>. That gives us income taxes of <base rate>, <low rate>, <medium rate>, and <high rate>."`

The analyst should then see `"What is the student loan rate, entered as a percentage, e.g. '10'?"`.

The analyst should then enter a number for the _percentage_ of the student loan, and then see `"You said the student loan rate would be <student loan rate>. What is the national insurance rate, entered as a percentage, e.g. '15'?"`

The analyst should then enter a number for the _percentage_ of the national insurance rate, and then see `"You said the national insurance rate would be <national insurance rate>."`

The analyst should then see `"I've got all the information I need. Crunching the numbers..."`

The analyst should then see `"For a population of <population size> earning an average of <average salary>, with income tax base rate at <base rate>, low rate at <low rate>, medium rate at <medium rate> and high rate at <high rate>, student loan rate at <student loan rate> and national insurance rate at <national insurance rate>, we predict the following:"`

The analyst should then see `"Average take-home pay would be <average take home pay>."`

The analyst should then see `"Average government revenue per head would be <government revenue per head>."`

The analyst should then see `"Percentage of the population who will pay: <percentage of population who will pay>."`

The analyst should then see `"Number of people who will pay: <percentage of population who will pay multiplied by given population>"`

The analyst should then see `"Total estimated government revenue: <government revenue>"`.

The analyst should then see `"Generating a report..."`

The analyst should then be able to find and view a file called `"Government Revenue Report, 20th June 2019"`. The date should be drawn from the input file name, not today's date.

The report should contain the following:

```
Government Revenue Report, 20th June 2019

For a population of <population size> earning an average of <average salary>, with income tax base rate at <base rate>, low rate at <low rate>, medium rate at <medium rate> and high rate at <high rate>, student loan rate at <student loan rate> and national insurance rate at <national insurance rate>, we predict the following:

Average take-home pay would be <average take home pay>.
Average government revenue per head would be <government revenue per head>.
Percentage of the population who will pay: <percentage of population who will pay>.
Number of people who will pay: <percentage of population who will pay multiplied by given population>

Total estimated government revenue: <government revenue>

This report was generated by an analyst for modeling purposes only.
```
