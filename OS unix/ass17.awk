{
	for(i=1; i<=NF; i++)
		freq[$i]++
}
END {
	for(word in freq)
		if(freq[word] >= 5)
			print word, freq[word]
}
