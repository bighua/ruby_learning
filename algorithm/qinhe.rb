i = 0,j = 0
MAX = 5000000
sum = []
5000001.times() {|i| sum[i] = 1}
i = 2
while (i + i) <= MAX
	j = i + i
	while (j <= MAX)
		sum[j] += i
		j += i
	end
	i += 1
end
(220..MAX).each do |i|
	if sum[i] > i && sum[i] <= MAX && sum[sum[i]] == i 
		puts i.to_s + "===" + sum[i].to_s
	end
	i += 1
end