# Tax Calculator 2

The Government wants to improve the calculator your wrote for what rates to set for income tax, student loans, and national insurance.

In this case, we also want to handle **tax bands**. A tax band is a tiering of rates: a base rate, a low rate, a medium rate, and a high rate. This means that people on lower incomes pay proportionally less tax. Here are the rules, and there's an example afterwards.

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

There's a second change to the government's model. They want to charge student loan and national insurance on my salary less the income tax. In other words, in the example above, I would pay student loan and national insurance on a salary-less-income-tax of 42,000, not my full salary of 50,000.

The rates for student loan and national insurance stay the same.

## Requirements

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