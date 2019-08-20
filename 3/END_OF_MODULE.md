# Tax Calculator 3

> You should build on your existing calculator that you completed in the end-of-module exercise for Exercises 1 and 2.

The Government wants to improve the calculator your wrote for what rates to set for income tax, student loans, and national insurance.

The Government has made three requests.

#### Request 1: Tax bands

We need to handle **income tax bands**. A tax band is a tiering of rates: a base rate, a low rate, a medium rate, and a high rate. This means that people on lower incomes pay proportionally less tax. Here are the rules, and there's an example afterwards.

- Any earnings up to 20,000 shouldn't attract any income tax. (Base rate)
- Any earnings from 20,001 to 40,000 should attract income tax at 20%. (Low rate)
- Any earnings from 40,001 to 100,000 should attract income tax at 40%. (Medium rate)
- Any earnings above 100,001 should attract income tax at 50%. (High rate)

For example: I earn 50,000. 

- The first 20,000 isn't taxed, for a base rate tax of 0. 
- The next 20,000 is taxed at 20%, for a low rate tax of 4,000.
- The next 10,000 is taxed at 40%, for a medium rate of 4,000.
- Since I don't have any income above 100,000, I don't pay the high rate of tax.

My total tax is 8,000. Therefore, my take-home pay, less income tax (but no other taxes) is 50,000 – 8,000, or 42,000.

#### Request 2: student loan and national insurance apply to net salary, not gross salary

There's a second change to the government's model. They want to charge student loan and national insurance on my salary less the income tax (the 'net salary'). In other words, in the example above, I would pay student loan and national insurance on a salary-less-income-tax of 42,000, not my full salary of 50,000 (which would be called my 'gross salary').

The rates for student loan and national insurance stay the same.

|        When I execute        | I see                                                                        |
|:----------------------------:|------------------------------------------------------------------------------|
| `income_tax`                 | `0`                                                                          |
| `income_tax(50000)`          | `8000`                                                                       |
| `student_loan`               | `0`                                                                          |
| `student_loan(50000)`        | `2500`                                                                       |
| `student_loan(100000)`       | `5000`                                                                       |
| `national_insurance`         | `0`                                                                          |
| `national_insurance(50000)`  | `2500`                                                                       |
| `national_insurance(100000)` | `5000`                                                                       |
| `take_home_pay`              | `0`                                                                          |
| `take_home_pay(50000)`       | The result of `50000 - (income tax) - (student loan on taxed income) - (national insurance on taxed income)` |
| `income_tax(50000, 0.1, 0.18, 0.25, 0.4)`     | The income tax for a salary of 50,000 at a base rate set to 10%, a low rate set to 18%, a medium rate set to 25%, and a high rate set to 40%                   |
| `student_loan(50000, 0.4)`   | The student loan for a salary of 50,000 at a rate set to 40%                 |
| `national_insurance(50000, 0.4)`   | The national insurance for a salary of 50,000 at a rate set to 40%                 |
| `take_home_pay(50000, 0.1, 0.18, 0.25, 0.4, 0.2, 0.2)`   | The take home pay for a salary of 50,000 at an income tax base rate set to 10%, a low rate set to 18%, a medium rate set to 25%, and a high rate set to 40%, a student loan rate of 20%, and a national insurance rate of 20%  |
| `government_revenue_per_head(50000, 0.1, 0.18, 0.25, 0.4, 0.2, 0.2)`   | The total tax revenue for a single salary of 50,000 at an income tax base rate set to 10%, a low rate set to 18%, a medium rate set to 25%, and a high rate set to 40%, a student loan rate of 20%, and a national insurance rate of 20%     |
| `fraction_of_people_who_will_pay(0.1, 0.18, 0.25, 0.4, 0.2, 0.2)`   | The percentage of the population who will pay an income tax base rate set to 10%, a low rate set to 18%, a medium rate set to 25%, and a high rate set to 40%, a student loan rate of 20%, and a national insurance rate of 20%, governed by the formula `1 - (income tax base rate + 0.5 * income tax low rate + 0.3 * income tax medium rate + 0.1 * income tax high rate + student loan + national insurance)`  |
| `government_revenue(50000, 0.1, 0.18, 0.25, 0.4, 0.2, 0.2, 1000000)`   | The total tax revenue for 1 million people with a salary of 50,000 at an income tax base rate set to 10%, a low rate set to 18%, a medium rate set to 25%, and a high rate set to 40%, a student loan rate of 20%, and a national insurance rate of 20%, factoring in the fraction of people who will pay  |

#### Request 3: Admin interface

The government would like to change how the program works by introducing a new type of user: an administrator.

When the program starts, the user should be presented with an option that says `"Greetings, citizen or administrator. Which one are you? Please type citizen or administrator."`

If the user enters `citizen`, they should be given the normal program which calculates their take-home pay (according to the updated model detailed above).

If the user enters `administrator`, they should instead be shown a message saying `"Greetings, administrator. We are going to calculate total government revenues. Start by entering the average salary of citizens in your country."`

The administrator should enter a number for the average salary, and then see `"You said your citizens have an average salary of <average salary>. How many citizens are there in your district?"`

The administrator should then enter a number for the population, and then see `"You said there are <population> in your district. What is the base rate of income tax (applicable from 0 to 20,000), entered as a percentage, e.g. '20'?"`

The administrator should then enter a number for the _percentage_ of the base rate of income tax, and then see `"You said the base rate would be <base rate>. What is the low rate of income tax (applicable from 20,001 to 40,000), entered as a percentage, e.g. '30'?"`

The administrator should then enter a number for the _percentage_ of the low rate of income tax, and then see `"You said the low rate would be <low rate>. What is the medium rate of income tax (applicable from 40,001 to 100,000), entered as a percentage, e.g. '40'?"`

The administrator should then enter a number for the _percentage_ of the medium rate of income tax, and then see `"You said the medium rate would be <medium rate>. What is the high rate of income tax (applicable from 100,001 upwards), entered as a percentage, e.g. '50'?"`

The administrator should then enter a number for the _percentage_ of the high rate of income tax, and then see `"You said the high rate would be <high rate>. That gives us income taxes of <base rate>, <low rate>, <medium rate>, and <high rate>."`

The administrator should then see `"What is the student loan rate, entered as a percentage, e.g. '10'?"`.

The administrator should then enter a number for the _percentage_ of the student loan, and then see `"You said the student loan rate would be <student loan rate>. What is the national insurance rate, entered as a percentage, e.g. '15'?"`

The administrator should then enter a number for the _percentage_ of the national insurance rate, and then see `"You said the national insurance rate would be <national insurance rate>."`

The administrator should then see `"I've got all the information I need. Crunching the numbers..."`

The administrator should then see `"For a population of <population size> earning an average of <average salary>, with income tax base rate at <base rate>, low rate at <low rate>, medium rate at <medium rate> and high rate at <high rate>, student loan rate at <student loan rate> and national insurance rate at <national insurance rate>, we predict the following:"`

The administrator should then see `"Average take-home pay would be <average take home pay>."`

The administrator should then see `"Average government revenue per head would be <government revenue per head>."`

The administrator should then see `"Percentage of the population who will pay: <percentage of population who will pay>."`

The administrator should then see `"Number of people who will pay: <percentage of population who will pay multiplied by given population>"`

The administrator should then see `"Total estimated government revenue: <government revenue>"`.
