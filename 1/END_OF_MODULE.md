# Tax Calculator 1

The Government needs a simple model for what rates to set for income tax, student loans, and national insurance.

Tax rates are a percentage of a total income. So, if I were earning an income of 100,000 at an income tax rate of 40%, I would pay 40,000 in tax. If income tax were the only tax, this would give me a take-home pay of 60,000. The government would receive 40,000 in revenue.

Higher taxes will cause a greater number of people to refuse to pay, and more people will result in more heads to tax. The government would like a simple calculator for which they can tweak the rates, average salaries, and population sizes, and maximise their total revenue.

## Requirements

|        When I execute        | I see                                                                        |
|:----------------------------:|------------------------------------------------------------------------------|
| `income_tax`                 | `0`                                                                          |
| `income_tax(50000)`          | `5000`                                                                       |
| `income_tax(100000)`         | `10000`                                                                      |
| `student_loan`               | `0`                                                                          |
| `student_loan(50000)`        | `2500`                                                                       |
| `student_loan(100000)`       | `5000`                                                                       |
| `national_insurance`         | `0`                                                                          |
| `national_insurance(50000)`  | `2500`                                                                       |
| `national_insurance(100000)` | `5000`                                                                       |
| `take_home_pay`              | `0`                                                                          |
| `take_home_pay(50000)`       | The result of `50000 - (income tax) - (student loan) - (national insurance)` |
| `income_tax(50000, 0.4)`     | The income tax for a salary of 50,000 at a rate set to 40%                   |
| `student_loan(50000, 0.4)`   | The student loan for a salary of 50,000 at a rate set to 40%                 |
| `national_insurance(50000, 0.4)`   | The national insurance for a salary of 50,000 at a rate set to 40%                 |
| `take_home_pay(50000, 0.4, 0.2, 0.2)`   | The take home pay for a salary of 50,000 at an income tax rate of 40%, a student loan rate of 20%, and a national insurance rate of 20%  |
| `government_revenue_per_head(50000, 0.4, 0.2, 0.2)`   | The total tax revenue for a single salary of 50,000 at an income tax rate of 40%, a student loan rate of 20%, and a national insurance rate of 20%     |
| `fraction_of_people_who_will_pay(0.4, 0.2, 0.2)`   | The percentage of the population who will pay an income tax rate of 40%, a student loan rate of 20%, and a national insurance rate of 20%, governed by the formula `1 - (income tax + student loan + national insurance)`  |
| `government_revenue(50000, 0.4, 0.2, 0.2, 1000000)`   | The total tax revenue for 1 million people with a salary of 50,000 at an income tax rate of 40%, a student loan rate of 20%, and a national insurance rate of 20%, factoring in the fraction of people who will pay  |