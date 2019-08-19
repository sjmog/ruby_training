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
  income*(1-(inc_tax_rate+stu_loan_rate+nat_ins_rate))
end

def government_revenue_per_head(av_income=0, inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05)
  av_income*(1-(inc_tax_rate+stu_loan_rate+nat_ins_rate))
end