#To access the tax calculator:
#1. type 'ruby tax_calculator3.rb' and hit Enter


#Constants defined

def average_salary(income=0)
  income
end

#Calculator

def student_loan(income=0,stu_loan_rate=0.05,base_tax_rate=0.1,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
  net_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate)*stu_loan_rate
end

def national_insurance(income=0,nat_ins_rate=0.05,base_tax_rate=0.1,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
 net_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate)*nat_ins_rate
end

def no_people_paying(pop_size=0,base_tax_rate=0.1,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  pop_size*fraction_of_people_who_will_pay(base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate)
end

#Population formulae

def government_revenue_per_head(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  income - take_home_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate)
end

def fraction_of_people_who_will_pay(base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  (1-((base_tax_rate/100) + 0.5*(low_tax_rate/100)+0.3*(med_tax_rate/100)+0.1*(high_tax_rate/100)+(stu_loan_rate/100)+(nat_ins_rate/100))).round(4)
end

def pct_of_people_who_will_pay(base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  (100-((base_tax_rate) + 0.5*(low_tax_rate)+0.3*(med_tax_rate)+0.1*(high_tax_rate)+(stu_loan_rate)+(nat_ins_rate))).round(4)
end

#def government_revenue(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05,pop_size=1000000)
 # (no_people_paying(pop_size,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate)*government_revenue_per_head(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate)).round(0)
#end

#def government_revenue(income=10,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05,pop_size=1000000)
  #fraction_of_people_who_will_pay(base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate) * government_revenue_per_head(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate,stu_loan_rate,nat_ins_rate)
#end

def government_revenue(average_salary=10,no_people_paying=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05,pop_size=1000000)
take_home_pay * no_people_paying
end

#Aggregate taxation formulae

def income_tax(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
base_tax(income,base_tax_rate) + low_tax(income,low_tax_rate) + med_tax(income,med_tax_rate) + high_tax(income,high_tax_rate)
end

def net_pay(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5)
  income - base_tax(income,base_tax_rate) - low_tax(income,low_tax_rate) - med_tax(income,med_tax_rate) - high_tax(income,high_tax_rate)
end

def take_home_pay(income=0,base_tax_rate=0,low_tax_rate=0.2,med_tax_rate=0.4,high_tax_rate=0.5,stu_loan_rate=0.05,nat_ins_rate=0.05)
  (net_pay(income,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate) - student_loan(income,stu_loan_rate,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate) - national_insurance(income,nat_ins_rate,base_tax_rate,low_tax_rate,med_tax_rate,high_tax_rate)).round(2)
end

def av_take_home_pay(take_home_pay=0)
  take_home_pay
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

#Greeter ascertains whether user is citizen or administrator, and runs different functions accordingly.

puts "Greetings, citizen or administrator. Which one are you? Please type citizen or administrator"
user_id = gets.chomp

#Citizen branch calculates: Take-home pay for an individual based on income.
  
  if user_id == "citizen"
    puts "Ok " + user_id + " my name is Tax Calculator. I'm here to calculate your take-home pay. What is your income?"
      income = gets.chomp 
    puts "I see your income is " + income + ". For that income, your take-home pay would be " + take_home_pay(income.to_i).to_s + "."
 
#Admin branch calculates: Government revenue, average take-home pay & associated average government revenue, the percentage of paying individuals, and the number of people paying. 
  
  elsif user_id == "administrator" or user_id == "admin"
	  puts "Greetings, administrator. We are going to calculate total government revenues. Start by entering the average salary of citizens in your country."
      average_salary = gets.chomp
    puts "You said your citizens have an average salary of " + average_salary + ". How many citizens are there in your district?" 
 	  pop_size = gets.chomp
    puts "You said there are " + pop_size + " people in your district. What is the base rate of income tax (applicable from 0 to 20,000), entered as a percentage, e.g. '20'?"
      base_tax_rate = gets.chomp
    puts "You said the base rate would be " + base_tax_rate + "%. What is the low rate of income tax (applicable from 20,001 to 40,000), entered as a percentage, e.g. '30'?"
      low_tax_rate = gets.chomp
    puts "You said the low rate would be " + low_tax_rate + "%. What is the medium rate of income tax (applicable from 40,001 to 100,000), entered as a percentage, e.g. '40'?"
  	  med_tax_rate = gets.chomp
  	puts "You said the medium rate would be " + med_tax_rate + "%. What is the high rate of income tax (applicable from 100,001 upwards), entered as a percentage, e.g. '50'?"
  	  high_tax_rate = gets.chomp
  	puts "You said the high rate would be " + high_tax_rate + "%. That gives us income taxes of " + base_tax_rate + "%, " + low_tax_rate + "%, " + med_tax_rate + "%, and " + high_tax_rate + "%. What is the student loan rate, entered as a percentage, e.g. '10'?"
  	  stu_loan_rate = gets.chomp
  	puts "You said the student loan rate would be " + stu_loan_rate + "%. What is the national insurance rate, entered as a percentage, e.g. '15'?"
  	  nat_ins_rate = gets.chomp
  	puts "You said the national insurance rate would be " + nat_ins_rate + "%."
     	sleep(0.5)
    puts "I've got all the information I need. Crunching the numbers..."
    	sleep (0.5)
    puts "For a population of " + pop_size + " earning an average of " + average_salary + ", with income tax base rate at " + base_tax_rate + "%, low rate at " + low_tax_rate + "%, medium rate at " + med_tax_rate + "%, and high rate at " + high_tax_rate + "%, student loan rate at " + stu_loan_rate + "%, and national insurance rate at " + nat_ins_rate + "%, we predict the following:"
   		sleep(0.5)
    puts "Average take-home pay would be £" + take_home_pay(average_salary.to_i).round(0).to_s + "."
   		sleep(0.5)  
    puts "Average government revenue per head would be £" + government_revenue_per_head(average_salary.to_i).round(0).to_s + "."
   		sleep(0.5)  
    puts "Percentage of the population who will pay: " + pct_of_people_who_will_pay(base_tax_rate.to_f,low_tax_rate.to_f,med_tax_rate.to_f,high_tax_rate.to_f,stu_loan_rate.to_f,nat_ins_rate.to_f).round(2).to_s + "%."
  		sleep(0.5)   
    puts "Number of people who will pay: " + no_people_paying(pop_size.to_f,base_tax_rate.to_f,low_tax_rate.to_f,med_tax_rate.to_f,high_tax_rate.to_f,stu_loan_rate.to_f,nat_ins_rate.to_f).round(0).to_s + "."
   		sleep(0.5)  
    puts "Total estimated government revenue: £" + (no_people_paying(pop_size.to_f,base_tax_rate.to_f,low_tax_rate.to_f,med_tax_rate.to_f,high_tax_rate.to_f,stu_loan_rate.to_f,nat_ins_rate.to_f) * government_revenue_per_head(average_salary.to_i)).round(2).to_s + "."
  
  else puts "An unexpected error occurred, you FAILED"
end