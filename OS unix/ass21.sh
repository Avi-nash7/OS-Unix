BEGIN {
    	print "This is the employee information"
    	print "Today's date is : " strftime("%d-%m-%Y")
	print "emp no.  name   salary   age   commission"
	print "---------------------------------------------"
}

{
	empno = $1
	name  = $2
	salary = $3
	age    = $4
	
	if (salary < 5000)
		commission = salary * 0.05
	else
		commission = salary * 0.10

	total_salary += salary
	total_commission += commission
	count++

	printf "%-8s %-6s %-8d %-5d %-10.2f\n", empno, name, salary, age, commission
}

END {
	print "---------------------------------------------"
	print "The No. of employees is : " count
	print "The total salary is : Rs. " total_salary
	print "The total commission is : Rs. " total_commission
	print "Thanking you for seeing this report"
}
