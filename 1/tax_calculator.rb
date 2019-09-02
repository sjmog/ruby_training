#To access the tax calculator:
#1. type 'irb' into the terminal
#2. type 'require "./tax_calculator"' and hit Enter

#constants defined


#functions defined
def income_tax(income=0,inc_tax_rate=0.1)
  income*inc_tax_rate
end

def student_loan(income=0,stu_loan_rate=0.05)
  income*stu_loan_rate
end

def national_insurance(income=0,nat_ins_rate=0.05)
  income*nat_ins_rate
end

def take_home_pay(income=0,inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05)
  income - income_tax(income,inc_tax_rate) - student_loan(income,stu_loan_rate) - national_insurance(income,nat_ins_rate)
end

def government_revenue_per_head(income=0, inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05)
  income - take_home_pay(income,inc_tax_rate,stu_loan_rate,nat_ins_rate)
end

def fraction_of_people_who_will_pay(inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05)
  (1-(inc_tax_rate+stu_loan_rate+nat_ins_rate)).round(1)
end

def government_revenue(av_income=0, inc_tax_rate=0.1, stu_loan_rate=0.05, nat_ins_rate=0.05,pop_size=1000000)
  (pop_size*fraction_of_people_who_will_pay(inc_tax_rate,stu_loan_rate,nat_ins_rate)*government_revenue_per_head(av_income,inc_tax_rate,stu_loan_rate,nat_ins_rate)).round(0)
end
