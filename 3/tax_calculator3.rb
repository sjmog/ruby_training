#To access the tax calculator:
#1. type 'ruby tax_calculator2.rb' and hit Enter

#Calculator

def student_loan(income=0,stu_loan_rate=0.05,base_tax_rate=0.1,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
  net_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate)*stu_loan_rate
end

def national_insurance(income=0,nat_ins_rate=0.05,base_tax_rate=0.1,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
 net_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate)*nat_ins_rate
end

#def income_tax(income=0,inc_tax_rate=0.1)
#  income*inc_tax_rate
#end

#def take_home_pay(income=0,inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05)
#  income - income_tax(income,inc_tax_rate) - student_loan(income,stu_loan_rate) - national_insurance(income,nat_ins_rate)
#end

#Population formulae

def government_revenue_per_head(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  income - take_home_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate)
end

def fraction_of_people_who_will_pay(inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05)
  (1-(inc_tax_rate+stu_loan_rate+nat_ins_rate)).round(2)
end

def government_revenue(av_income=0,inc_tax_rate=0.1,stu_loan_rate=0.05,nat_ins_rate=0.05,pop_size=1000000)
  (pop_size*fraction_of_people_who_will_pay(inc_tax_rate,stu_loan_rate,nat_ins_rate)*government_revenue_per_head(av_income,inc_tax_rate,stu_loan_rate,nat_ins_rate)).round(0)
end

#Aggregate taxation formulae

def income_tax(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
base_tax(income,base_tax_rate) + low_tax(income,low_tax_rate) + med_tax(income,med_tax_rate) + high_tax(income,high_tax_rate)
end

def net_pay(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
  income - base_tax(income,base_tax_rate) - low_tax(income,low_tax_rate) - med_tax(income,med_tax_rate) - high_tax(income,high_tax_rate)
end

def take_home_pay(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  net_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate) - student_loan(income,stu_loan_rate,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate) - national_insurance(income,nat_ins_rate,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate)
end


#Tax bands defined for income

def base_tax(income=0,base_tax_rate=0)
	if income >=0 && income <=20000
		income*base_tax_rate
	elsif income > 20000
		20000*base_tax_rate
	 else 0
  end
end
def low_tax(income=0,low_tax_rate=0.2)
	if income > 20000 && income <= 40000
		(income - 20000)*low_tax_rate
	elsif income > 40000
		20000*low_tax_rate
	else 0
  end
end

def med_tax(income=0,med_tax_rate=0.4)
	if income > 40000 && income <= 100000
		(income - 40000)*med_tax_rate
	elsif income > 100000
		60000*med_tax_rate
	else 0
  end
end

def high_tax(income=0,high_tax_rate=0.5)
	if income > 100000
		(income - 100000)*high_tax_rate
	else 0
  end
end

#Greeter

#puts "Greetings, citizen! What is your name?"

#name = gets.chomp

#puts "Ok " + name + " my name is Tax Calculator. I'm here to calculate your take-home pay. What is your income?"

#income = gets.chomp

#puts "I see your income is " + income + ". For that income, your take-home pay would be " + take_home_pay(income.to_i).to_s + "."