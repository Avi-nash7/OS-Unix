BEGIN {
	 print "Enter the word:"
	 getline word < "/dev/tty"
	 
	 print "Enter the file name:"
	 getline file < "/dev/tty"

	 count = 0
}

{
	 for(i=1; i<=NF; i++)
	 {
		if($i == word)
			count++
	 }
}

END {
	print "The word '" word "' occurs " count " times in file " file
}
